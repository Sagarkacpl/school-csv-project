<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Process and Audit Management Dashboard</title>
  <!-- Bootstrap 5 -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <!-- Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
  <!-- Chart.js -->
  <script src="assets/js/chart.umd.min.js"></script>
  <script src="assets/js/plotly-latest.min.js"></script>
</head>
<body>
  <div class="container-fluid py-3 app-shell">
    <!-- Top Brand Bar -->
    <div class="brandbar mb-3 px-3 py-2 d-flex align-items-center justify-content-between">
      <h1 class="mb-0">Process and Audit Management Dashboard</h1>
    </div>
    <div class="row g-3">
      <!-- MAIN BODY -->
      <div class="col-lg-10 col-12">
        <div class="row g-3">
          <!-- Heatmap + KPI -->
          <div class="col-md-7">
            <div class="card h-100">
              <div class="card-header d-flex justify-content-between align-items-center">
                <span>Audit Risk Rating</span>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered heatmap mb-0">
                    <thead>
                      <tr>
                        <th style="width:30%"></th>
                        <th>Jan-25</th>
                        <th>Feb-25</th>
                        <th>Mar-25</th>
                        <th>Apr-25</th>
                        <th>May-25</th>
                        <th>Jun-25</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>Fraud</th>
                        <td class="cell c-5">5.00</td>
                        <td class="cell c-0">-</td>
                        <td class="cell c-0">-</td>
                        <td class="cell c-0">-</td>
                        <td class="cell c-5">5.00</td>
                        <td class="cell c-5">5.00</td>
                        <td class="cell c-5">5.00</td>
                      </tr>
                      <tr>
                        <th>Lack of Training</th>
                        <td class="cell c-4">4.00</td>
                        <td class="cell c-2">3.00</td>
                        <td class="cell c-3">3.80</td>
                        <td class="cell c-2">2.25</td>
                        <td class="cell c-1">1.33</td>
                        <td class="cell c-2">2.50</td>
                        <td class="cell c-2">2.53</td>
                      </tr>
                      <tr>
                        <th>None</th>
                        <td class="cell c-1">2.00</td>
                        <td class="cell c-1">1.00</td>
                        <td class="cell c-2">3.00</td>
                        <td class="cell c-2">3.00</td>
                        <td class="cell c-3">3.50</td>
                        <td class="cell c-1">2.00</td>
                        <td class="cell c-2">2.33</td>
                      </tr>
                      <tr>
                        <th>System Glitch</th>
                        <td class="cell c-3">3.75</td>
                        <td class="cell c-2">2.33</td>
                        <td class="cell c-2">3.00</td>
                        <td class="cell c-2">2.20</td>
                        <td class="cell c-2">2.25</td>
                        <td class="cell c-2">3.00</td>
                        <td class="cell c-2">2.77</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-2">
            <div class="card h-100">
              <div class="card-body d-flex align-items-center justify-content-center flex-column">
                <div class="text-center">
                  <div class="kpi">2.77</div>
                  <div class="muted">Audit Risk Rating</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card h-100">
              <div class="card-header d-flex align-items-center justify-content-between">
                <span>Department</span>
                <span class="text-muted"><i class="bi bi-funnel"></i></span>
              </div>
              <div class="card-body p-0">
                <div class="list-group list-compact scroll-y department-group">
                  <label class="list-group-item active">
                    <input type="radio" name="department" value="Accounting" hidden checked> Accounting
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Accounts Payable" hidden> Accounts Payable
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Accounts Receivable" hidden> Accounts Receivable
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Credit & Collections" hidden> Credit & Collections
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Payroll" hidden> Payroll
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Audit" hidden> Audit
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Finance" hidden> Finance
                  </label>
                  <label class="list-group-item">
                    <input type="radio" name="department" value="Risk & Compliance" hidden> Risk & Compliance
                  </label>
                </div>
              </div>
            </div>
          </div>

          <!-- Assistant / Notes + Efficiency -->
          <div class="col-xl-3 col-lg-5">
            <div class="card h-100">
              <div class="card-header">Feel Free to Ask Any Finance Questions</div>
              <div class="card-body">
                <div class="scroll-y">
                  <p class="mb-2">Cars should be booked as a fixed asset on the balance sheet. This means that the value
                    of the car should be recorded under the "property, plant, and equipment" section of the balance
                    sheet as a non‑current asset.</p>
                  <p class="mb-2">The value of the car should be recorded at its original purchase price minus any
                    accumulated depreciation. This asset should be periodically reviewed and adjusted for depreciation
                    according to the accounting standards and company policies.</p>
                </div>
                <div class="d-flex align-items-center mt-3">
                  <button type="button" class="btn btn-primary mb-2"><i class="bi bi-robot"></i> Fincha Bot</button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-6 col-lg-5">
            <div class="card">
              <div class="card-header">Change in working capital</div>
              <div class="card-body">
                <canvas id="workingCapitalChart"></canvas>
                <ul class="list-unstyled text-center">
                  <li class="mb-2"><span class="badge bg-secondary">&nbsp;</span> Working Capital:
                    <strong>22,868K</strong>
                  </li>
                  <li class="mb-2"><span class="badge bg-primary">&nbsp;</span> Current Asset:
                    <strong>25,139K</strong>
                  </li>
                  <li><span class="badge bg-info">&nbsp;</span> Current Liability: <strong>(2,271K)</strong></li>
                </ul>
              </div>
            </div>
            <div class="card mt-3 pt-2 pb-2">
              <div class="row">
                <div class="col-md-12">
                  <div class="tab-content position-relative" id="nav-tabContent">
                    <div class="ap-ar-tabs">
                      <nav>
                        <div class="nav nav-tabs mb-3 mt-2 border-0" id="nav-tab" role="tablist">
                          <button class="nav-link active" id="ap-chart-tab" data-bs-toggle="tab"
                            data-bs-target="#ap-chart-panel" type="button" role="tab" aria-controls="ap-chart-panel"
                            aria-selected="true">AP</button>
                          <button class="nav-link" id="ar-chart-tab" data-bs-toggle="tab" data-bs-target="#ar-chart-panel"
                            type="button" role="tab" aria-controls="ar-chart-panel" aria-selected="false">AR</button>
                        </div>
                      </nav>
                    </div>
                    <!-- AP Chart Panel -->
                    <div class="tab-pane fade active show" id="ap-chart-panel" role="tabpanel"
                      aria-labelledby="ap-chart-tab">
                      <div class="row">
                        <!-- Chart -->
                        <div class="col-md-8 position-relative">
                          <canvas id="apChart"></canvas>
                        </div>
                        <!-- Right Section -->
                        <div class="col-md-4 d-flex flex-column justify-content-center">
                          <div class="mb-2">
                            <button id="apPrevBtn" class="btn btn-light btn-sm">&lt;</button>
                            <button id="apNextBtn" class="btn btn-light btn-sm">&gt;</button>
                          </div>
                          <h5><b>AP Ageing</b></h5>
                          <p id="apBalanceText" class="mb-1"><b>Balance as per Books:</b> ₹18,500</p>
                          <p id="apAccountText" class="text-muted">Account: Service Provider ABC</p>
                        </div>
                      </div>
                    </div>
                    <!-- AR Chart Panel -->
                    <div class="tab-pane fade" id="ar-chart-panel" role="tabpanel" aria-labelledby="ar-chart-tab">
                      <div class="row">
                        <!-- Chart -->
                        <div class="col-md-8 position-relative">
                          <canvas id="arChart"></canvas>
                        </div>
                        <!-- Right Section -->
                        <div class="col-md-4 d-flex flex-column justify-content-center">
                          <div class="mb-2">
                            <button id="arPrevBtn" class="btn btn-light btn-sm">&lt;</button>
                            <button id="arNextBtn" class="btn btn-light btn-sm">&gt;</button>
                          </div>
                          <h5><b>AR Ageing</b></h5>
                          <p id="arBalanceText" class="mb-1"><b>Balance as per Books:</b> ₹21,307</p>
                          <p id="arAccountText" class="text-muted">Account: Airbnb, Lastminute.com</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3">
            <div class="card">
              <div class="card-header">Inventory</div>
              <div class="card-body text-center">

                <nav>
                  <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
                      type="button" role="tab" aria-controls="nav-home" aria-selected="true">Allocation</button>
                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile"
                      type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Ageing</button>
                  </div>
                </nav>

                <div class="tab-content" id="nav-tabContent">
                  <div class="tab-pane fade active show" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="row">
                      <div class="col-md-4">
                        <p class="mb-0">Food</p>
                        <p class="fw-bold">193.96K</p>
                      </div>
                      <div class="col-md-4">
                        <p class="mb-0">Beverage</p>
                        <p class="fw-bold">274.74K</p>
                      </div>
                      <div class="col-md-4">
                        <p class="mb-0">Other</p>
                        <p class="fw-bold">52.95K</p>
                      </div>
                    </div>
                    <div id="sunburstChart" style="height:250px;"></div>
                  </div>
                  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="border rounded p-2 mb-3">
                          <p class="fw-bold mb-0">$1,786</p>
                          <p class="mb-0">Upto 3 Months</p>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="border rounded p-2 mb-3">
                          <p class="fw-bold mb-0">$10,970</p>
                          <p class="mb-0">4 to 6 Months</p>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="border rounded p-2 mb-3">
                          <p class="fw-bold mb-0">$18,399</p>
                          <p class="mb-0">7 to 9 Months</p>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="border rounded p-2 mb-3">
                          <p class="fw-bold mb-0">$2,283</p>
                          <p class="mb-0">10 to 12 Months</p>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="border rounded p-2 mb-3">
                          <p class="fw-bold mb-0">$45,057</p>
                          <p class="mb-0">Beyond 12</p>
                        </div>
                      </div>
                      <div>
                        <button type="button" class="btn btn-primary mb-2">Detailed Inventory Analysis</button>
                      </div>
                    </div>
                  </div>
                </div>


              </div>
            </div>
            <div class="card p-3 mt-3">
              <button type="button" class="btn btn-primary">Forecast Revenue</button>
            </div>
          </div>
        </div>
      </div>
      <!-- SIDEBAR -->
        <aside class="col-lg-2 col-12 sidebar">
          <div class="row g-3">
            <div class="col-12">
              <div class="card h-100">
                <div class="card-header d-flex align-items-center justify-content-between">
                  <span>Month</span>
                  <span class="text-muted"><i class="bi bi-funnel"></i></span>
                </div>
                <div class="card-body p-0">
                  <div class="list-group list-compact month-group">
                    <label class="list-group-item active">
                      <input type="radio" name="month" value="01" checked> Jan
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="02"> Feb
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="03"> Mar
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="04"> Apr
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="05"> May
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="06"> Jun
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="07"> Jul
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="08"> Aug
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="09"> Sep
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="10"> Oct
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="11"> Nov
                    </label>
                    <label class="list-group-item">
                      <input type="radio" name="month" value="12"> Dec
                    </label>
                  </div>
                </div>
              </div>
              <!-- Action Buttons -->
              <div class="card p-3 mt-3">
                <button type="button" class="btn btn-primary mb-2 w-100">PO Analysis</button>
                <button type="button" class="btn btn-success w-100">Generate Report</button>
              </div>
            </div>
          </div>
        </aside>
    </div>
    <!-- Bottom Tiles -->
    <div class="row g-3 mt-1" id="departmentChips">
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Accounts Payable</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Accounts Receivable</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Payroll</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Financial Analyst</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Tax Accountant</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Accounting</div>
          <p class="mb-0">Lorem Ipsum is simply dummy text</p>
        </div>
      </div>
    </div>
  </div>

  <!-- Styles -->
  <style>
    /* Hide default radio dots */
    input[type="radio"] {
      display: none;
    }
    /* Label as selectable item */
    .list-group-item {
      cursor: pointer;
      transition: background 0.2s, color 0.2s;
    }
    /* Active (selected) state */
    .list-group-item.active {
      background-color: #0d6efd !important;
      color: #fff !important;
      font-weight: bold;
    }
  </style>

  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>

  <!-- Working Capital Chart -->
  <script>
    const ctx = document.getElementById('workingCapitalChart').getContext('2d');
    const workingCapitalChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [
          {
            label: 'Working Capital',
            data: [0, 92011, 0, 0, 278798, 0],
            backgroundColor: '#b5b5b5'
          },
          {
            label: 'Current Asset',
            data: [0, 0, -55419, -55089, 0, -145800],
            backgroundColor: '#8da6d7'
          },
          {
            label: 'Current Liability',
            data: [0, 0, -25419, -35089, 0, -105800],
            backgroundColor: '#3b6fc3'
          }
        ]
      },
      options: {
        responsive: true,
        plugins: {
          legend: { position: 'top' },
          tooltip: {
            callbacks: {
              label: function (context) {
                return context.dataset.label + ': ' + context.raw.toLocaleString();
              }
            }
          }
        },
        scales: {
          y: {
            beginAtZero: true,
            ticks: {
              callback: function (value) {
                return value.toLocaleString();
              }
            }
          }
        }
      }
    });
  </script>

  <!-- Sunburst Chart -->
  <script>
    var data = [{
      type: "sunburst",
      labels: [
        "Food Inventory", "Beverage Inventory", "Other Inventory",
        "Meat & Lamb", "Seafood", "Produce", "Dairy", "Frozen Foods", "Pastry Department", "Dry Storage", "Condiment",
        "Wine", "Liquor", "Beer", "Non-Alcoholic"
      ],
      parents: [
        "", "", "",
        "Food Inventory", "Food Inventory", "Food Inventory", "Food Inventory", "Food Inventory", "Food Inventory", "Food Inventory", "Food Inventory",
        "Beverage Inventory", "Beverage Inventory", "Beverage Inventory", "Beverage Inventory"
      ],
      values: [
        60, 30, 10,
        10, 8, 8, 7, 6, 5, 8, 8,
        12, 8, 6, 4
      ],
      branchvalues: "total",
      textinfo: "label+percent entry",
      insidetextorientation: "radial",
      marker: { line: { width: 1 } }
    }];
    var layout = {
      margin: { l: 0, r: 0, b: 0, t: 0 },
      sunburstcolorway: ["#1f77b4"],
      extendsunburstcolorway: true
    };
    Plotly.newPlot('sunburstChart', data, layout, { displayModeBar: false });
  </script>

  <!-- Radio Group Setup -->
  <script>
    function setupRadioGroup(containerSelector) {
      const container = document.querySelector(containerSelector);
      if (!container) return;
      container.querySelectorAll("label.list-group-item").forEach(label => {
        label.addEventListener("click", function () {
          container.querySelectorAll("label.list-group-item").forEach(l => {
            l.classList.remove("active");
            const radio = l.querySelector("input[type='radio']");
            if (radio) {
              radio.checked = false;
              radio.removeAttribute("checked");
            }
          });
          this.classList.add("active");
          const radio = this.querySelector("input[type='radio']");
          if (radio) {
            radio.checked = true;
            radio.setAttribute("checked", "checked");
          }
        });
      });
    }
    setupRadioGroup(".department-group");
    setupRadioGroup(".month-group");
  </script>









  <!-- Main Dashboard Script -->
  <script>
    // Global chart variables
    let arInteractiveChart;
    let apInteractiveChart;

    // Chart configuration objects
    const arInteractiveConfig = {
      type: 'line',
      data: {
        labels: ['< 30 Days', '30-45 Days', '45-60 Days', '60-90 Days', '90-120 Days', '> 120 Days'],
        datasets: [{
          label: 'AR Ageing',
          data: [],
          borderColor: '#4a6ee0',
          backgroundColor: '#4a6ee0',
          tension: 0,
          fill: false,
          pointBackgroundColor: '#16325c',
          pointBorderColor: '#16325c',
          pointRadius: 6,
          pointHoverRadius: 8
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: { display: false },
          tooltip: { enabled: true }
        },
        scales: {
          x: { grid: { display: false } },
          y: { beginAtZero: true, grid: { drawBorder: false } }
        }
      }
    };

    const apInteractiveConfig = {
      type: 'line',
      data: {
        labels: ['< 30 Days', '30-45 Days', '45-60 Days', '60-90 Days', '90-120 Days', '> 120 Days'],
        datasets: [{
          label: 'AP Ageing',
          data: [],
          borderColor: '#4a6ee0',
          backgroundColor: '#4a6ee0',
          tension: 0,
          fill: false,
          pointBackgroundColor: '#16325c',
          pointBorderColor: '#16325c',
          pointRadius: 6,
          pointHoverRadius: 8
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: { display: false },
          tooltip: { enabled: true }
        },
        scales: {
          x: { grid: { display: false } },
          y: { beginAtZero: true, grid: { drawBorder: false } }
        }
      }
    };

    // Data stores
    let arInteractiveData = {
      currentIndex: 3,
      values: [],
      info: []
    };
    let apInteractiveData = {
      currentIndex: 3,
      values: [],
      info: []
    };

    // Load Interactive AR Chart Data
    function loadInteractiveARChartData(month) {
      $.ajax({
        url: "ar_interactive_fetch_data.php",
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

    // Load Interactive AP Chart Data
    function loadInteractiveAPChartData(month) {
      $.ajax({
        url: "ap_interactive_fetch_data.php",
        type: "POST",
        data: { month: month },
        dataType: "json",
        success: function(response) {
          if (response.status === "success") {
            apInteractiveData.values = response.values || [];
            apInteractiveData.info = response.info || [];
            apInteractiveData.currentIndex = response.defaultIndex || 3;
            createInteractiveAPChart();
            updateAPInfo(apInteractiveData.currentIndex);
          } else {
            console.error("Error loading AP interactive data:", response.message);
            loadFallbackAPData();
          }
        },
        error: function(xhr, status, error) {
          console.error("AJAX Error:", error);
          loadFallbackAPData();
        }
      });
    }

    // Fallback data functions
    function loadFallbackARData() {
      arInteractiveData.values = [0, 2, 4, 2, 2, 10];
      arInteractiveData.info = [
        { balance: "1,000", account: "Account: Uber, Ola" },
        { balance: "2,500", account: "Account: Netflix, Prime" },
        { balance: "4,000", account: "Account: Spotify, Gaana" },
        { balance: "21,307", account: "Account: Airbnb, Lastminute.com" },
        { balance: "3,500", account: "Account: Swiggy, Zomato" },
        { balance: "10,000", account: "Account: Google, Microsoft" }
      ];
      arInteractiveData.currentIndex = 3;
      createInteractiveARChart();
      updateARInfo(arInteractiveData.currentIndex);
    }

    function loadFallbackAPData() {
      apInteractiveData.values = [0, 3, 5, 4, 1, 8];
      apInteractiveData.info = [
        { balance: "2,000", account: "Account: Vendor A, Vendor B" },
        { balance: "3,500", account: "Account: Supplier X, Supplier Y" },
        { balance: "5,000", account: "Account: Contractor Z" },
        { balance: "18,500", account: "Account: Service Provider ABC" },
        { balance: "2,800", account: "Account: Material Supplier DEF" },
        { balance: "12,000", account: "Account: Equipment Rental GHI" }
      ];
      apInteractiveData.currentIndex = 3;
      createInteractiveAPChart();
      updateAPInfo(apInteractiveData.currentIndex);
    }

    // Create Interactive AR Chart
    function createInteractiveARChart() {
      const ctx = document.getElementById('arChart');
      if (!ctx) return;
      if (arInteractiveChart) {
        arInteractiveChart.destroy();
      }

      const highlightPlugin = {
        id: 'arHighlight',
        beforeDraw: (chart) => {
          if (arInteractiveData.currentIndex === null) return;
          const meta = chart.getDatasetMeta(0);
          const point = meta.data[arInteractiveData.currentIndex];
          if (!point) return;
          const ctx = chart.ctx;
          const x = point.x;
          const topY = chart.scales.y.top;
          const bottomY = chart.scales.y.bottom;
          ctx.save();
          ctx.fillStyle = "rgba(70, 130, 180, 0.15)";
          ctx.fillRect(x - 30, topY, 60, bottomY - topY);
          ctx.restore();
        }
      };

      const config = JSON.parse(JSON.stringify(arInteractiveConfig));
      config.data.datasets[0].data = arInteractiveData.values;
      config.plugins = [highlightPlugin];
      arInteractiveChart = new Chart(ctx.getContext('2d'), config);
    }

    // Create Interactive AP Chart
    function createInteractiveAPChart() {
      const ctx = document.getElementById('apChart');
      if (!ctx) return;
      if (apInteractiveChart) {
        apInteractiveChart.destroy();
      }

      const highlightPlugin = {
        id: 'apHighlight',
        beforeDraw: (chart) => {
          if (apInteractiveData.currentIndex === null) return;
          const meta = chart.getDatasetMeta(0);
          const point = meta.data[apInteractiveData.currentIndex];
          if (!point) return;
          const ctx = chart.ctx;
          const x = point.x;
          const topY = chart.scales.y.top;
          const bottomY = chart.scales.y.bottom;
          ctx.save();
          ctx.fillStyle = "rgba(70, 130, 180, 0.15)";
          ctx.fillRect(x - 30, topY, 60, bottomY - topY);
          ctx.restore();
        }
      };

      const config = JSON.parse(JSON.stringify(apInteractiveConfig));
      config.data.datasets[0].data = apInteractiveData.values;
      config.plugins = [highlightPlugin];
      apInteractiveChart = new Chart(ctx.getContext('2d'), config);
    }

    // Update info sections
    function updateARInfo(index) {
      const balanceElement = document.getElementById("arBalanceText");
      const accountElement = document.getElementById("arAccountText");
      if (balanceElement && accountElement && arInteractiveData.info[index]) {
        balanceElement.innerHTML = "<b>Balance as per Books:</b> ₹" + arInteractiveData.info[index].balance;
        accountElement.innerText = arInteractiveData.info[index].account;
      }
    }

    function updateAPInfo(index) {
      const balanceElement = document.getElementById("apBalanceText");
      const accountElement = document.getElementById("apAccountText");
      if (balanceElement && accountElement && apInteractiveData.info[index]) {
        balanceElement.innerHTML = "<b>Balance as per Books:</b> ₹" + apInteractiveData.info[index].balance;
        accountElement.innerText = apInteractiveData.info[index].account;
      }
    }

    // Navigation functions
    function navigateARChart(direction) {
      const totalItems = arInteractiveData.info.length;
      if (totalItems === 0) return;
      if (direction === 'prev') {
        arInteractiveData.currentIndex = (arInteractiveData.currentIndex - 1 + totalItems) % totalItems;
      } else if (direction === 'next') {
        arInteractiveData.currentIndex = (arInteractiveData.currentIndex + 1) % totalItems;
      }
      updateARInfo(arInteractiveData.currentIndex);
      if (arInteractiveChart) {
        arInteractiveChart.update();
      }
    }

    function navigateAPChart(direction) {
      const totalItems = apInteractiveData.info.length;
      if (totalItems === 0) return;
      if (direction === 'prev') {
        apInteractiveData.currentIndex = (apInteractiveData.currentIndex - 1 + totalItems) % totalItems;
      } else if (direction === 'next') {
        apInteractiveData.currentIndex = (apInteractiveData.currentIndex + 1) % totalItems;
      }
      updateAPInfo(apInteractiveData.currentIndex);
      if (apInteractiveChart) {
        apInteractiveChart.update();
      }
    }

    // Fetch department suggestions
    function fetchSuggestions(month, dept = '') {
      $.ajax({
        url: "fetch_suggestion.php",
        type: "GET",
        dataType: "json",
        data: { month: month },
        success: function(res) {
          if (res.status === "success") {
            let html = "";
            res.data.forEach(row => {
              html += `
                <div class="col-6 col-md-4 col-lg-2">
                  <div class="category-chip">
                    <div class="fw-bold">${row.Department}</div>
                    <p class="mb-0">${row.Suggestions_For_Next_Month}</p>
                  </div>
                </div>
              `;
            });
            $("#departmentChips").html(html);
          } else {
            $("#departmentChips").html("<div class='alert alert-warning'>" + res.message + "</div>");
          }
        },
        error: function() {
          console.log("Error loading suggestions");
        }
      });
    }

    // Handle month selection and update UI
    function updateDashboardData(month) {
      // Update all components with new month data
      loadInteractiveARChartData(month);
      loadInteractiveAPChartData(month);
      fetchSuggestions(month);
    }

    // Initialize on page load
    function initializeDashboard() {
      const defaultMonth = document.querySelector("input[name='month']:checked")?.value || "01";
      updateDashboardData(defaultMonth);
    }

    // Event listeners setup
    function setupEventListeners() {
      // Handle month selection
      document.querySelectorAll(".month-group label").forEach(label => {
        label.addEventListener("click", function() {
          const radio = this.querySelector("input[name='month']");
          if (radio) {
            radio.checked = true;
            document.querySelectorAll(".month-group label").forEach(l => l.classList.remove("active"));
            this.classList.add("active");
            updateDashboardData(radio.value);
          }
        });
      });

      // Setup AR Chart Navigation Buttons
      const arPrevBtn = document.getElementById("arPrevBtn");
      const arNextBtn = document.getElementById("arNextBtn");
      if (arPrevBtn) {
        arPrevBtn.addEventListener("click", function() {
          navigateARChart('prev');
        });
      }
      if (arNextBtn) {
        arNextBtn.addEventListener("click", function() {
          navigateARChart('next');
        });
      }

      // Setup AP Chart Navigation Buttons
      const apPrevBtn = document.getElementById("apPrevBtn");
      const apNextBtn = document.getElementById("apNextBtn");
      if (apPrevBtn) {
        apPrevBtn.addEventListener("click", function() {
          navigateAPChart('prev');
        });
      }
      if (apNextBtn) {
        apNextBtn.addEventListener("click", function() {
          navigateAPChart('next');
        });
      }
    }

    // DOM ready initialization
    $(document).ready(function() {
      initializeDashboard();
      setupEventListeners();
    });

    // Window load event (backup initialization)
    window.addEventListener('load', function() {
      if (!arInteractiveChart && !apInteractiveChart) {
        initializeDashboard();
        setupEventListeners();
      }
    });
  </script>

</body>
</html>