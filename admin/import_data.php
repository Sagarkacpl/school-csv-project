<?php
session_start();
if(empty($_SESSION['user_email']) && empty($_SESSION['name']) && empty($_SESSION['user_id'])) {
    header('Location: index.php');
    exit();
}
include 'include/dbconn.php';
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!doctype html>

<html lang="en" class="layout-navbar-fixed layout-menu-fixed layout-compact" dir="ltr" data-skin="default"
    data-assets-path="assets/" data-template="vertical-menu-template" data-bs-theme="light">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Import Data</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
        rel="stylesheet" />

    <link rel="stylesheet" href="assets/vendor/fonts/iconify-icons.css" />

    <!-- Core CSS -->
    <!-- build:css assets/vendor/css/theme.css  -->

    <link rel="stylesheet" href="assets/vendor/libs/node-waves/node-waves.css" />

    <link rel="stylesheet" href="assets/vendor/libs/pickr/pickr-themes.css" />

    <link rel="stylesheet" href="assets/vendor/css/core.css" />
    <link rel="stylesheet" href="assets/css/demo.css" />

    <!-- Vendors CSS -->

    <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- endbuild -->

    <link rel="stylesheet" href="assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icons.css" />

    <link rel="stylesheet" href="assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <!-- Page CSS -->
    <link rel="stylesheet" href="assets/vendor/css/pages/cards-advance.css" />

    <!-- Helpers -->
    <script type="text/javascript"
        src="http://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=t3a11p-OpuZ1Ect02c8dOQwn9m_S-nwRSa4ZlbPMPkVp3c01QokMXptNjRTTNt8mNxBK4fGrNfqgWG8HZ-H4YZeomL_kxzW8jkgLpUUNJck"
        charset="UTF-8"></script>
    <script src="assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->

    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="assets/vendor/js/template-customizer.js"></script>

    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->

    <script src="assets/js/config.js"></script>



    <link rel="stylesheet" href="assets/vendor/libs/quill/typography.css" />
    <link rel="stylesheet" href="assets/vendor/libs/highlight/highlight.css" />
    <link rel="stylesheet" href="assets/vendor/libs/quill/katex.css" />
    <link rel="stylesheet" href="assets/vendor/libs/quill/editor.css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .cke_notifications_area {
            display: none !important;
        }
    </style>

</head>

<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">
            <!-- Menu -->
            <?php include('include/sidebar.php') ?>

            <div class="menu-mobile-toggler d-xl-none rounded-1">
                <a href="javascript:void(0);"
                    class="layout-menu-toggle menu-link text-large text-bg-secondary p-2 rounded-1">
                    <i class="ti tabler-menu icon-base"></i>
                    <i class="ti tabler-chevron-right icon-base"></i>
                </a>
            </div> <!-- / Menu -->

            <!-- Layout container -->
            <div class="layout-page">
                <!-- Navbar -->
                <?php include('include/header.php') ?>
                <!-- / Navbar -->

                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">

                        <!-- Import Data Card -->
                        <div class="card">
                            <div class="card-header d-flex justify-content-between align-items-center flex-wrap">
                                <h5 class="mb-0 text-md-start text-center">Import Data</h5>
                                <a href="#" class="btn btn-primary mt-2 mt-md-0" data-bs-toggle="modal"
                                    data-bs-target="#videoModal">Add Import Data</a>

                                <!-- Add Video Modal -->
                                <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="videoModalLabel">Add Import Data</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <form method="POST" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                  <div class="mb-3">
                                                    <label for="tablename" class="form-label">Table Name Title</label>
                                                    <?php
                                                    $tables = [];
                                                    $result = $db->query("SHOW TABLES");
                                                    if ($result) {
                                                        while ($row = $result->fetch_array()) {
                                                            $tables[] = $row[0];
                                                        }
                                                    }
                                                    $db->close();
                                                    ?>
                                                    <select class="form-control" id="tablename" name="tablename" required>
                                                        <option value="">Select Table</option>
                                                        <?php foreach ($tables as $table): ?>
                                                            <?php if (strtolower($table) !== 'admins'): // admin table ko skip karenge ?>
                                                                <option value="<?php echo htmlspecialchars($table); ?>">
                                                                    <?php echo htmlspecialchars($table); ?>
                                                                </option>
                                                            <?php endif; ?>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>


                                                    <div class="mb-3">
                                                        <label for="filecsv" class="form-label">file in csv</label>
                                                        <input type="file" name="filecsv" id="filecsv"
                                                            class="form-control" required>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover dt-responsive nowrap"
                                        style="width: 100%;">
                                        <thead class="table-light">
                                            <tr>
                                                <th>#</th>
                                                <th>TABLE</th>
                                                <th>DOWNLOAD SAMPLE FILE</th>
                                                <th>Download all data</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        include 'include/dbconn.php';
                                        $tables = [];
                                        $result = $db->query("SHOW TABLES");
                                        if ($result) {
                                            $i = 1;
                                            while ($row = $result->fetch_array()) {
                                                $table = $row[0];
                                                if (strtolower($table) === 'admins') continue; // skip admin table
                                                echo "<tr>";
                                                echo "<td>{$i}</td>";
                                                echo "<td>" . htmlspecialchars($table) . "</td>";
                                                // Download sample file (CSV header only)
                                                echo "<td><a href='download_sample.php?table=" . urlencode($table) . "' class='btn btn-sm btn-info'>Sample CSV</a></td>";
                                                // Download all data
                                                echo "<td><a href='download_all.php?table=" . urlencode($table) . "' class='btn btn-sm btn-success'>Download All</a></td>";
                                                echo "</tr>";
                                                $i++;
                                            }
                                        }
                                        $db->close();
                                        ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- View Content Modals -->
                    <div class="modal fade" id="contentModal_1" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-xl modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Karur Vysya Bank Executive Notification 2025|| Latest Update
                                    </h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body position-relative">
                                    <div style="word-wrap: break-word; max-height: 400px; overflow-y: auto; user-select: text; -webkit-user-select: text; -moz-user-select: text; -ms-user-select: text; background-color: #f8f9fa; padding: 15px; border-radius: 5px; white-space: pre-wrap;"
                                        readonly>
                                        <iframe width="560" height="315"
                                            src="https://www.youtube.com/embed/htaMGrBl8v4?si=iR24U9cBq-qI1LgE"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-label-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="contentModal_2" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-xl modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Build a Full-Stack MERN Job Portal | React, Node.js,
                                        MongoDB, Express</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body position-relative">
                                    <div style="word-wrap: break-word; max-height: 400px; overflow-y: auto; user-select: text; -webkit-user-select: text; -moz-user-select: text; -ms-user-select: text; background-color: #f8f9fa; padding: 15px; border-radius: 5px; white-space: pre-wrap;"
                                        readonly>
                                        <iframe width="560" height="315"
                                            src="https://www.youtube.com/embed/Z_SOG82eRiE?si=z6X7XMxpIzFkg2Y0"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-label-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Edit Video Modals -->
                 

                

                    <!-- Footer -->
                    <?php include('include/footer.php') ?>
                    <!-- / Footer -->
                    <div class="content-backdrop fade"></div>
                </div>
                <!-- Content wrapper -->
            </div>
            <!-- / Layout page -->
        </div>
        <!-- Overlay -->
        <div class="layout-overlay layout-menu-toggle"></div>
        <!-- Drag Target Area To SlideIn Menu On Small Screens -->
        <div class="drag-target"></div>
    </div>
    <!-- / Layout wrapper -->
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/theme.js -->
    <script src="assets/vendor/libs/jquery/jquery.js"></script>
    <script src="assets/vendor/libs/popper/popper.js"></script>
    <script src="assets/vendor/js/bootstrap.js"></script>
    <script src="assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="assets/vendor/libs/@algolia/autocomplete-js.js"></script>
    <script src="assets/vendor/libs/pickr/pickr.js"></script>
    <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="assets/vendor/libs/hammer/hammer.js"></script>
    <script src="assets/vendor/libs/i18n/i18n.js"></script>
    <script src="assets/vendor/js/menu.js"></script>
    <!-- endbuild -->
    <!-- Vendors JS -->
    <script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>
    <!-- Main JS -->
    <script src="assets/vendor/libs/quill/katex.js"></script>
    <script src="assets//vendor/libs/highlight/highlight.js"></script>
    <script src="assets/vendor/libs/quill/quill.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- Page JS -->
    <script src="assets/js/dashboards-crm.js"></script>
    <script src="assets/js/tables-datatables-advanced.js"></script>
    <script src="assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
    <script src="assets/js/forms-editors.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <!-- <script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script> -->
    <script src="https://cdn.ckeditor.com/4.16.0/full/ckeditor.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.repeater/1.2.1/jquery.repeater.min.js"></script>

    <script>
        CKEDITOR.replace('editor', {
            // Add any additional configuration options here
        });
    </script>
</body>

</html>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['filecsv']) && isset($_POST['tablename'])) {
    include 'include/dbconn.php'; 

    $table = $_POST['tablename'];
    $file = $_FILES['filecsv']['tmp_name'];

    try {
        if (($handle = fopen($file, "r")) !== FALSE) {
            $columns = fgetcsv($handle);
            if (!$columns) throw new Exception("CSV file is empty or invalid.");

            $colList = implode('`,`', array_map('trim', $columns));
            $rowCount = 0;
            while (($data = fgetcsv($handle)) !== FALSE) {
                $escaped = array_map(function($v) use ($db) {
                    return "'" . $db->real_escape_string($v) . "'";
                }, $data);
                $singleInsert = "INSERT INTO `$table` (`$colList`) VALUES (" . implode(',', $escaped) . ")";
                if (!$db->query($singleInsert)) {
                    throw new Exception("Insert failed at row $rowCount: " . $db->error);
                }
                $rowCount++;
            }
            fclose($handle);

            // Move uploaded file to ../storage
            $storageDir = dirname(__DIR__) . '/storage/';
            if (!is_dir($storageDir)) {
                mkdir($storageDir, 0777, true);
            }
            $targetPath = $storageDir . basename($_FILES['filecsv']['name']);
            if (move_uploaded_file($_FILES['filecsv']['tmp_name'], $targetPath)) {
                // File moved successfully
            } else {
                // File move failed (optional: show error or log)
            }

            if ($rowCount > 0) {
                echo "<script>Swal.fire('Success','$rowCount rows imported successfully!','success');</script>";
            } else {
                throw new Exception("No data rows found in CSV.");
            }
        } else {
            throw new Exception("Unable to open CSV file.");
        }
    } catch (Exception $e) {
        echo "<script>Swal.fire('Error','" . addslashes($e->getMessage()) . "','error');</script>";
    }
    $db->close();
}
?>