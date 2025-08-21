

<?php
include "db.php";

// Get current month if not specified
$currentMonth = isset($_GET['month']) ? $_GET['month'] : date('m');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Dashboard</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        
        .dashboard-container {
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .dashboard-header {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .stat-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center;
        }
        
        .stat-value {
            font-size: 2em;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        
        .stat-label {
            color: #666;
            font-size: 0.9em;
        }
        
        .charts-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .chart-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        .chart-title {
            font-size: 1.2em;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }
        
        .ageing-details {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        .ageing-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }
        
        .ageing-item:last-child {
            border-bottom: none;
        }
        
        .ageing-value {
            font-weight: bold;
            color: #333;
        }
        
        #monthSelector {
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background: white;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <div class="dashboard-header">
            <h1>Inventory Dashboard</h1>
            <label for="monthSelector">Select Month:</label>
            <select id="monthSelector" onchange="loadDashboardData(this.value)">
                <option value="01" <?php echo ($currentMonth == '01') ? 'selected' : ''; ?>>January</option>
                <option value="02" <?php echo ($currentMonth == '02') ? 'selected' : ''; ?>>February</option>
                <option value="03" <?php echo ($currentMonth == '03') ? 'selected' : ''; ?>>March</option>
                <option value="04" <?php echo ($currentMonth == '04') ? 'selected' : ''; ?>>April</option>
                <option value="05" <?php echo ($currentMonth == '05') ? 'selected' : ''; ?>>May</option>
                <option value="06" <?php echo ($currentMonth == '06') ? 'selected' : ''; ?>>June</option>
                <option value="07" <?php echo ($currentMonth == '07') ? 'selected' : ''; ?>>July</option>
                <option value="08" <?php echo ($currentMonth == '08') ? 'selected' : ''; ?>>August</option>
                <option value="09" <?php echo ($currentMonth == '09') ? 'selected' : ''; ?>>September</option>
                <option value="10" <?php echo ($currentMonth == '10') ? 'selected' : ''; ?>>October</option>
                <option value="11" <?php echo ($currentMonth == '11') ? 'selected' : ''; ?>>November</option>
                <option value="12" <?php echo ($currentMonth == '12') ? 'selected' : ''; ?>>December</option>
            </select>
        </div>

        <div class="stats-grid" id="categoryStats">
            <!-- Category stats will be loaded here -->
        </div>

        <div class="charts-container">
            <div class="chart-card">
                <div class="chart-title">Category Distribution</div>
                <canvas id="categoryChart" width="400" height="400"></canvas>
            </div>
            
            <div class="chart-card">
                <div class="chart-title">AR Ageing Analysis</div>
                <canvas id="arChart" width="400" height="400"></canvas>
            </div>
        </div>

        <div class="ageing-details" id="ageingDetails">
            <h3>Detailed Inventory Analysis</h3>
            <div id="ageingBreakdown">
                <!-- Ageing breakdown will be loaded here -->
            </div>
        </div>
    </div>

    <script>
        let categoryChart = null;
        let arChart = null;
        let arInteractiveData = {
            values: [],
            info: [],
            currentIndex: 0
        };

        // Load dashboard data
        function loadDashboardData(month) {
            loadInventoryData(month);
            loadInteractiveInventoryPieChartData(month);
        }

        // Load inventory data
        function loadInventoryData(month) {
            $.ajax({
                url: "inventory_fetch_data.php",
                type: "POST",
                data: { month: month },
                dataType: "json",
                success: function(response) {
                    if (response.status === "success") {
                        updateCategoryStats(response.categoryTotals);
                        createCategoryChart(response.categoryTotals);
                        updateAgeingDetails(response.ageingData);
                    } else {
                        console.error("Error loading inventory data:", response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error:", error);
                }
            });
        }

        // Load interactive pie chart data
        function loadInteractiveInventoryPieChartData(month) {
            $.ajax({
                url: "pie_chart_fetch_data.php",
                type: "POST",
                data: { month: month },
                dataType: "json",
                success: function(response) {
                    if (response.status === "success") {
                        arInteractiveData.values = response.values || [];
                        arInteractiveData.info = response.info || [];
                        arInteractiveData.currentIndex = response.defaultIndex || 3;
                        createInteractiveARChart();
                        updateARInfo(arInteractiveData.currentIndex);
                    } else {
                        console.error("Error loading AR interactive data:", response.message);
                        loadFallbackARData();
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error:", error);
                    loadFallbackARData();
                }
            });
        }

        // Update category stats
        function updateCategoryStats(categoryTotals) {
            const statsContainer = document.getElementById('categoryStats');
            let html = '';
            
            Object.keys(categoryTotals).forEach(category => {
                const value = categoryTotals[category];
                const formattedValue = (value / 1000).toFixed(2) + 'K';
                
                html += `
                    <div class="stat-card">
                        <div class="stat-value">${formattedValue}</div>
                        <div class="stat-label">${category}</div>
                    </div>
                `;
            });
            
            statsContainer.innerHTML = html;
        }

        // Create category chart
        function createCategoryChart(categoryTotals) {
            const ctx = document.getElementById('categoryChart').getContext('2d');
            
            if (categoryChart) {
                categoryChart.destroy();
            }
            
            const labels = Object.keys(categoryTotals);
            const data = Object.values(categoryTotals);
            
            categoryChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: labels,
                    datasets: [{
                        data: data,
                        backgroundColor: [
                            '#FF6384',
                            '#36A2EB',
                            '#FFCE56'
                        ],
                        hoverBackgroundColor: [
                            '#FF6384',
                            '#36A2EB',
                            '#FFCE56'
                        ]
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                        }
                    }
                }
            });
        }

        // Create interactive AR chart
        function createInteractiveARChart() {
            const ctx = document.getElementById('arChart').getContext('2d');
            
            if (arChart) {
                arChart.destroy();
            }
            
            const labels = ["< 30 Days", "30-45 Days", "45-60 Days", "60-90 Days", "90-120 Days", "> 120 Days"];
            
            arChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        data: arInteractiveData.values,
                        backgroundColor: [
                            '#FF6384',
                            '#36A2EB',
                            '#FFCE56',
                            '#4BC0C0',
                            '#9966FF',
                            '#FF9F40'
                        ]
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom',
                        }
                    },
                    onClick: function(event, activeElements) {
                        if (activeElements.length > 0) {
                            const index = activeElements[0].index;
                            arInteractiveData.currentIndex = index;
                            updateARInfo(index);
                        }
                    }
                }
            });
        }

        // Update AR info
        function updateARInfo(index) {
            // This function would update AR-specific info if needed
            console.log("AR Info updated for index:", index);
        }

        // Update ageing details
        function updateAgeingDetails(ageingData) {
            const container = document.getElementById('ageingBreakdown');
            let html = '';
            
            Object.keys(ageingData).forEach(period => {
                const value = ageingData[period];
                const formattedValue = '$' + value.toLocaleString();
                
                html += `
                    <div class="ageing-item">
                        <span>${period}</span>
                        <span class="ageing-value">${formattedValue}</span>
                    </div>
                `;
            });
            
            container.innerHTML = html;
        }

        // Load fallback AR data
        function loadFallbackARData() {
            arInteractiveData = {
                values: [10, 15, 25, 30, 12, 8],
                info: [
                    {balance: 1786, account: "Sample accounts"},
                    {balance: 5078, account: "Sample accounts"},
                    {balance: 12309, account: "Sample accounts"},
                    {balance: 823, account: "Sample accounts"},
                    {balance: 45057, account: "Sample accounts"}
                ],
                currentIndex: 3
            };
            createInteractiveARChart();
            updateARInfo(arInteractiveData.currentIndex);
        }

        // Initialize dashboard on page load
        $(document).ready(function() {
            const currentMonth = $('#monthSelector').val();
            loadDashboardData(currentMonth);
        });
    </script>
</body>
</html>

