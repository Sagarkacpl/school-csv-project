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
          <div class="col-xl-2 col-lg-5">
            <div class="card h-100">
              <div class="card-header">Feel Free to Ask Any Finance Questions</div>
              <div class="card-body">
                <div id="chatBox" class="scroll-y mb-3" style="max-height: 250px; overflow-y: auto;">
                  <p class="mb-2">A laptop should be booked under Fixed Assets in the books of accounts. Fixed assets are long-term tangible assets that are used in the production or supply of goods and services, are expected to be used for more than one accounting period, and are not held for resale. These assets are recorded at their purchase price and are usually depreciated over their useful life to reflect their diminishing value. By recording the laptop as a fixed asset, the company can track its value over time and accurately reflect its impact on the business's financial statements.</p>
                </div>

                <!-- Initially only button -->
                <div id="startChat">
                  <button type="button" class="btn btn-primary mb-2" onclick="startChat()">
                    <i class="bi bi-robot"></i> Fincha Bot
                  </button>
                </div>

                <!-- Chat input hidden initially -->
                <div id="chatInputBox" class="d-flex align-items-center mt-2 d-none" >
                  <input type="text" id="userMessage" class="form-control me-2" placeholder="Ask your finance question...">
                  <button class="btn btn-success" onclick="sendMessage()">Send</button>
                </div>
              </div>
            </div>
          </div>

          <script>
            function startChat() {
              document.getElementById("startChat").classList.add("d-none");   // Button hide
              document.getElementById("chatInputBox").classList.remove("d-none"); // Input+send show
            }

            function getCurrentIST() {
              let now = new Date();
              let options = { 
                timeZone: "Asia/Kolkata", 
                hour: "2-digit", 
                minute: "2-digit", 
                second: "2-digit", 
                year: "numeric", 
                month: "short", 
                day: "numeric" 
              };
              return new Intl.DateTimeFormat("en-IN", options).format(now);
            }

            function sendMessage() {
              let message = document.getElementById("userMessage").value.trim();
              if (message === "") return;

              let chatBox = document.getElementById("chatBox");

              // Append user msg with IST
              chatBox.innerHTML += `<p><b>User</b> (${getCurrentIST()}): ${message}</p>`;
              document.getElementById("userMessage").value = "";

              chatBox.scrollTop = chatBox.scrollHeight;

              // Call PHP API
              fetch("chat_api.php", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: "message=" + encodeURIComponent(message)
              })
              .then(res => res.json())
              .then(data => {
                chatBox.innerHTML += `<p><b>Fincha Bot</b>: ${data.reply}</p>`;
                chatBox.scrollTop = chatBox.scrollHeight;
              })
              .catch(err => {
                chatBox.innerHTML += `<p style="color:red;"><b>Error:</b> ${err}</p>`;
              });
            }
            </script>



          <div class="col-xl-7 col-lg-5">
            <div class="card">
              <div class="card-header">Change in working capital</div>
              <div class="card-body">
                <div class="row">
                  <!-- Left Side Static Chart -->
                  <div class="col-md-8">
                    <canvas id="workingCapitalChart"></canvas>
                  </div>

                  <!-- Right Side Dynamic Values -->
                  <div class="col-md-4 d-flex align-items-center justify-content-center flex-column">
                    <div>
                      <ul class="list-unstyled text-center">
                        <li><span class="badge bg-secondary">&nbsp;</span> Working Capital:</li>
                        <li class="value-box working-capital"><strong>0</strong></li>
                        <li><span class="badge bg-primary">&nbsp;</span> Current Asset:</li>
                        <li class="value-box current-asset"><strong>0</strong></li>
                        <li><span class="badge bg-info">&nbsp;</span> Current Liability:</li>
                        <li class="value-box current-liability"><strong>0</strong></li>
                      </ul>
                    </div>
                  </div>
                </div>
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
                        <p class="fw-bold">Loading....</p>
                      </div>
                      <div class="col-md-4">
                        <p class="mb-0">Beverage</p>
                        <p class="fw-bold">Loading....</p>
                      </div>
                      <div class="col-md-4">
                        <p class="mb-0">Other</p>
                        <p class="fw-bold">Loading....</p>
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
          <p class="mb-0">Loading....</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Accounts Receivable</div>
          <p class="mb-0">Loading....</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Payroll</div>
          <p class="mb-0">Loading....</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Financial Analyst</div>
          <p class="mb-0">Loading....</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Tax Accountant</div>
          <p class="mb-0">Loading....</p>
        </div>
      </div>
      <div class="col-6 col-md-4 col-lg-2">
        <div class="category-chip">
          <div class="fw-bold">Accounting</div>
          <p class="mb-0">Loading....</p>
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
  <script src="assets/js/jquery-min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>

  <!-- Working Capital Chart -->
  <script>
    // const ctx = document.getElementById('workingCapitalChart').getContext('2d');
    // const workingCapitalChart = new Chart(ctx, {
    //   type: 'bar',
    //   data: {
    //     labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    //     datasets: [
    //       {
    //         label: 'Working Capital',
    //         data: [0, 92011, 0, 0, 278798, 0],
    //         backgroundColor: '#b5b5b5'
    //       },
    //       {
    //         label: 'Current Asset',
    //         data: [0, 0, -55419, -55089, 0, -145800],
    //         backgroundColor: '#8da6d7'
    //       },
    //       {
    //         label: 'Current Liability',
    //         data: [0, 0, -25419, -35089, 0, -105800],
    //         backgroundColor: '#3b6fc3'
    //       }
    //     ]
    //   },
    //   options: {
    //     responsive: true,
    //     plugins: {
    //       legend: { position: 'top' },
    //       tooltip: {
    //         callbacks: {
    //           label: function (context) {
    //             return context.dataset.label + ': ' + context.raw.toLocaleString();
    //           }
    //         }
    //       }
    //     },
    //     scales: {
    //       y: {
    //         beginAtZero: true,
    //         ticks: {
    //           callback: function (value) {
    //             return value.toLocaleString();
    //           }
    //         }
    //       }
    //     }
    //   }
    // });
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

    // function loadInteractiveInvetoryPieChartData(month) {
    //   $.ajax({
    //     url: "pie_chart_fetch_data.php",
    //     type: "POST",
    //     data: { month: month },
    //     dataType: "json",
    //     success: function(response) {
    //       if (response.status === "success") {
    //         arInteractiveData.values = response.values || [];
    //         arInteractiveData.info = response.info || [];
    //         arInteractiveData.currentIndex = response.defaultIndex || 3;
    //         createInteractiveARChart();
    //         updateARInfo(arInteractiveData.currentIndex);
    //       } else {
    //         console.error("Error loading AR interactive data:", response.message);
    //         loadFallbackARData();
    //       }
    //     },
    //     error: function(xhr, status, error) {
    //       console.error("AJAX Error:", error);
    //       loadFallbackARData();
    //     }
    //   });
    // }

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
            $("#departmentChips").html("<div class='alert alert-danger'>" + res.message + "</div>");
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
      // loadInteractiveInvetoryPieChartData(month);
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

<script>
/* ---------- Chart Initialization (empty) ---------- */
const ctx = document.getElementById("workingCapitalChart").getContext("2d");

let wcChart = new Chart(ctx, {
    type: "bar",
    data: {
        labels: [], // will come from AJAX
        datasets: [
            {
                label: "Working Capital",
                data: [],
                backgroundColor: "#9e9e9e"
            },
            {
                label: "Current Asset",
                data: [],
                backgroundColor: "#5a8fdc"
            },
            {
                label: "Current Liability",
                data: [],
                backgroundColor: "#2e62b5"
            }
        ]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { position: "top" },
            tooltip: {
                callbacks: {
                    label: ctx => `${ctx.dataset.label}: ${ctx.raw.toLocaleString()}`
                }
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                ticks: {
                    callback: v => v.toLocaleString()
                }
            }
        }
    }
});

/* ---------- Load Last 6 Months Chart Data ---------- */
function loadWorkingCapitalChart(currentMonth) {
    $.ajax({
        url: "get_working_capital_6months.php",
        type: "POST",
        data: { month: currentMonth },
        dataType: "json",
        success: function(res) {
            if (res.status === "success") {
                wcChart.data.labels = res.labels;
                wcChart.data.datasets[0].data = res.datasets.working_capital;
                wcChart.data.datasets[1].data = res.datasets.assets;
                wcChart.data.datasets[2].data = res.datasets.liabilities;
                wcChart.update();
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX Error:", error);
        }
    });
}

/* ---------- Right Side Dynamic Data ---------- */
function loadWorkingCapitalData(month) {
    $.ajax({
        url: "fetch_working_capital.php",
        type: "POST",
        data: { month: month },
        dataType: "json",
        success: function(res) {
            if (res.status === "success") {
                document.querySelector(".working-capital strong").innerText = res.working_capital.toLocaleString();
                document.querySelector(".current-asset strong").innerText = res.assets.toLocaleString();
                document.querySelector(".current-liability strong").innerText = res.liabilities.toLocaleString();
            }
        }
    });
}

/* ---------- Init ---------- */
$(document).ready(function() {
    const currentMonth = new Date().getMonth() + 1; // current month number (1-12)

    // --- ONLOAD: default load (current month)
    loadWorkingCapitalChart(currentMonth);
    loadWorkingCapitalData(currentMonth);

    // --- ONCLICK / onchange: user selects month
    document.querySelectorAll("input[name='month']").forEach(radio => {
        radio.addEventListener("click", function() {  // 👈 onclick
            loadWorkingCapitalData(this.value);
            loadWorkingCapitalChart(this.value);
        });
    });
});



function loadInventoryAllocationData(month) {
    $.ajax({
        url: "pie_chart_fetch_data.php",
        type: "POST",
        data: { month: month },
        dataType: "json",
        success: function(response) {
            if (response.status === "success") {
                updateInventoryAllocation(response.data);
                updateSunburstChart(response.sunburst);
            } else {
                console.error("Error loading inventory allocation data:", response.message);
                loadFallbackAllocationData();
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX Error:", error);
            loadFallbackAllocationData();
        }
    });
}

function loadInventoryAgeingData(month) {
    $.ajax({
        url: "inventory_ageing_data.php",
        type: "POST",
        data: { month: month },
        dataType: "json",
        success: function(response) {
            if (response.status === "success") {
                updateInventoryAgeing(response.data);
            } else {
                console.error("Error loading inventory ageing data:", response.message);
                loadFallbackAgeingData();
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX Error:", error);
            loadFallbackAgeingData();
        }
    });
}

function loadFallbackAllocationData() {
    const fallbackData = {
        'Food': { value: 25210, formatted: '25.21K', percentage: 32.4 },
        'Beverage': { value: 46940, formatted: '46.94K', percentage: 60.2 },
        'Other': { value: 6350, formatted: '6.35K', percentage: 7.4 }
    };
    
    const sunburstData = {
        labels: ['Food', 'Beverage', 'Other'],
        values: [25210, 46940, 6350],
        percentages: [32.4, 60.2, 7.4]
    };
    
    updateInventoryAllocation(fallbackData);
    updateSunburstChart(sunburstData);
}

function loadFallbackAgeingData() {
    const fallbackData = {
        'Upto 3 Months': { value: 1786, formatted: '$1,786' },
        '4 to 6 Months': { value: 5078, formatted: '$5,078' },
        '7 to 9 Months': { value: 12309, formatted: '$12,309' },
        '10 to 12 Months': { value: 823, formatted: '$823' },
        'Beyond 12': { value: 45057, formatted: '$45,057' }
    };
    
    updateInventoryAgeing(fallbackData);
}

function updateInventoryAllocation(data) {
    // Update the allocation display values (top section)
    const allocationContainer = document.querySelector('#nav-home .row');
    if (allocationContainer) {
        let html = '';
        Object.keys(data).forEach(category => {
            html += `
                <div class="col-md-4">
                    <p class="mb-0">${category}</p>
                    <p class="fw-bold">${data[category].formatted}</p>
                </div>
            `;
        });
        allocationContainer.innerHTML = html;
    }
}

function updateInventoryAgeing(data) {
    // Update the ageing display values (boxes layout)
    const ageingContainer = document.querySelector('#nav-profile .row');
    if (ageingContainer) {
        let html = '';
        
        Object.keys(data).forEach((period, index) => {
            const colClass = period === 'Beyond 12' ? 'col-md-12' : 'col-md-6';
            html += `
                <div class="${colClass}">
                    <div class="border rounded p-2 mb-3">
                        <p class="fw-bold mb-0">${data[period].formatted}</p>
                        <p class="mb-0">${period}</p>
                    </div>
                </div>
            `;
        });
        
        ageingContainer.innerHTML = html;
    }
}

function updateSunburstChart(sunburstData) {
    // Sunburst data में अब labels, parents और values तीनों हैं
    var data = [{
        type: "sunburst",
        labels: sunburstData.labels,   // e.g. ["Food Inventory", "Meat", "Seafood"]
        parents: sunburstData.parents, // e.g. ["", "Food Inventory", "Food Inventory"]
        values: sunburstData.values,   // e.g. [1317, 500, 817]
        branchvalues: "total",
        textinfo: "label+value+percent entry",
        insidetextorientation: "radial",
        marker: { 
            line: { width: 2, color: 'white' }
        }
    }];

    var layout = {
        margin: { l: 0, r: 0, b: 0, t: 30 },
        font: { size: 12 },
        sunburstcolorway: [
            "#4472C4", "#E57373", "#81C784", "#FFB74D", "#9575CD", 
            "#4DD0E1", "#FFF176", "#FF8A65", "#A1C181", "#F06292",
            "#64B5F6", "#FFD54F", "#4DB6AC", "#F48FB1", "#90A4AE"
        ]
    };

    Plotly.react('sunburstChart', data, layout, { 
        displayModeBar: false,
        responsive: true 
    });
}



// Override the existing updateDashboardData function to include inventory
function updateDashboardDataEnhanced(month) {
    // Update all components with new month data
    loadInteractiveARChartData(month);
    loadInteractiveAPChartData(month);
    loadInventoryAllocationData(month);
    loadInventoryAgeingData(month);
    fetchSuggestions(month);
}

// Initialize inventory data on page load
function initializeInventoryTabs() {
    const defaultMonth = document.querySelector("input[name='month']:checked")?.value || "01";
    loadInventoryAllocationData(defaultMonth);
    loadInventoryAgeingData(defaultMonth);
}

// Replace the original function call in the event listeners
$(document).ready(function() {
    // Override the month selection handler
    document.querySelectorAll(".month-group label").forEach(label => {
        label.addEventListener("click", function() {
            const radio = this.querySelector("input[name='month']");
            if (radio) {
                radio.checked = true;
                document.querySelectorAll(".month-group label").forEach(l => l.classList.remove("active"));
                this.classList.add("active");
                updateDashboardDataEnhanced(radio.value);
            }
        });
    });
    
    // Initialize inventory tabs
    initializeInventoryTabs();
    
    // Initial load for other components
    const defaultMonth = document.querySelector("input[name='month']:checked")?.value || "01";
    updateDashboardDataEnhanced(defaultMonth);
});

</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".value-box").forEach(function (box) {
      let num = parseInt(box.innerText.replace(/\D/g, "")) || 0; // get numeric part
      let height = Math.max(30, num / 500); // scale factor (adjust divisor)
      box.style.height = height + "px";
    });
  });
</script>
</body>
</html>