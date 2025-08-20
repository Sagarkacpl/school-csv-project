<?php
session_start();
if(empty($_SESSION['user_email']) && empty($_SESSION['name']) && empty($_SESSION['user_id'])) {
    header('Location: index.php');
    exit();
}
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
                                            <form method="POST">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <label for="videoTitle" class="form-label">Video Title</label>
                                                        <input type="text" class="form-control" id="videoTitle"
                                                            name="videoTitle" required>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="PublishedDate" class="form-label">Published
                                                            On</label>
                                                        <input type="date" name="PublishedDate" id="PublishedDate"
                                                            class="form-control" required>
                                                    </div>

                                                    <div class="mb-3">
                                                        <label for="videoIframe" class="form-label">Video Iframe
                                                            Code</label>
                                                        <textarea class="form-control" id="videoIframe"
                                                            name="videoIframe" rows="4"
                                                            placeholder="Paste iframe embed code here..."
                                                            required></textarea>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary">Save Video</button>
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
                                                <th>Title</th>
                                                <th>Published On</th>
                                                <th>Content</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Karur Vysya Bank Executive Notification 2025|| Latest Update</td>
                                                <td>
                                                    5th Aug 2025 </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                        data-bs-target="#contentModal_1">
                                                        View Content
                                                    </button>
                                                </td>
                                                <td class="d-flex gap-2">
                                                    <button type="button" class="btn btn-sm btn-primary"
                                                        data-bs-toggle="modal" data-bs-target="#editModal_1">
                                                        Edit
                                                    </button>
                                                    <form method="post" onsubmit="return confirm('Delete this video?');"
                                                        style="display: inline;">
                                                        <input type="hidden" name="videos_id"
                                                            value="eCtEbzROeVlvWTFFMTR3dCt6bjZPOGxEMWtoM25GbDVMS255K0Y3QnQ5az0=">
                                                        <input type="hidden" name="csrf_token"
                                                            value="e49ebd37dfe6f654ebc0dc0391489670991d3640cef2e934d401181afd2a88a2">
                                                        <input type="hidden" name="action" value="delete_videos">
                                                        <button type="submit"
                                                            class="btn btn-sm btn-danger">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Build a Full-Stack MERN Job Portal | React, Node.js, MongoDB,
                                                    Express</td>
                                                <td>
                                                    6th Aug 2025 </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                        data-bs-target="#contentModal_2">
                                                        View Content
                                                    </button>
                                                </td>
                                                <td class="d-flex gap-2">
                                                    <button type="button" class="btn btn-sm btn-primary"
                                                        data-bs-toggle="modal" data-bs-target="#editModal_2">
                                                        Edit
                                                    </button>
                                                    <form method="post" onsubmit="return confirm('Delete this video?');"
                                                        style="display: inline;">
                                                        <input type="hidden" name="videos_id"
                                                            value="TlRtRy90eVJCSmMxWk9qWVBiQ2NyV3dPdWltSENkR09Kd3FJUnBwMlNoST0=">
                                                        <input type="hidden" name="csrf_token"
                                                            value="e49ebd37dfe6f654ebc0dc0391489670991d3640cef2e934d401181afd2a88a2">
                                                        <input type="hidden" name="action" value="delete_videos">
                                                        <button type="submit"
                                                            class="btn btn-sm btn-danger">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
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
                    <div class="modal fade" id="editModal_1" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Edit Video</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <form method="POST">
                                    <div class="modal-body">
                                        <input type="hidden" name="csrf_token"
                                            value="e49ebd37dfe6f654ebc0dc0391489670991d3640cef2e934d401181afd2a88a2">
                                        <input type="hidden" name="action" value="edit_video">
                                        <input type="hidden" name="video_id"
                                            value="QnRaTEkvMEVNTC9SNy83M3JXN25FZDhlRHBGSGVoSThqR3hWOVkzZFROdz0=">

                                        <div class="mb-3">
                                            <label for="videoTitle_1" class="form-label">Video Title</label>
                                            <input type="text" class="form-control video-title-edit" id="videoTitle_1"
                                                name="videoTitle"
                                                value="Karur Vysya Bank Executive Notification 2025|| Latest Update"
                                                required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="PublishedDate_1" class="form-label">Published On</label>
                                            <input type="date" name="PublishedDate" id="PublishedDate_1"
                                                class="form-control" value="2025-08-05" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="videoIframe_1" class="form-label">Video Iframe Code</label>
                                            <textarea class="form-control video-iframe-edit" id="videoIframe_1"
                                                name="videoIframe" rows="4"
                                                placeholder="Paste iframe embed code here..."
                                                required>&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/htaMGrBl8v4?si=iR24U9cBq-qI1LgE&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share&quot; referrerpolicy=&quot;strict-origin-when-cross-origin&quot; allowfullscreen&gt;&lt;/iframe&gt;</textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Update Video</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="editModal_2" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Edit Video</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <form method="POST">
                                    <div class="modal-body">
                                        <input type="hidden" name="csrf_token"
                                            value="e49ebd37dfe6f654ebc0dc0391489670991d3640cef2e934d401181afd2a88a2">
                                        <input type="hidden" name="action" value="edit_video">
                                        <input type="hidden" name="video_id"
                                            value="QmpPTS9RUTQ1VURrMGtDRG05NXl0cFJsMEtsWlJYS2dKOXRETklnL2dtbz0=">

                                        <div class="mb-3">
                                            <label for="videoTitle_2" class="form-label">Video Title</label>
                                            <input type="text" class="form-control video-title-edit" id="videoTitle_2"
                                                name="videoTitle"
                                                value="Build a Full-Stack MERN Job Portal | React, Node.js, MongoDB, Express"
                                                required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="PublishedDate_2" class="form-label">Published On</label>
                                            <input type="date" name="PublishedDate" id="PublishedDate_2"
                                                class="form-control" value="2025-08-06" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="videoIframe_2" class="form-label">Video Iframe Code</label>
                                            <textarea class="form-control video-iframe-edit" id="videoIframe_2"
                                                name="videoIframe" rows="4"
                                                placeholder="Paste iframe embed code here..."
                                                required>&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/Z_SOG82eRiE?si=z6X7XMxpIzFkg2Y0&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share&quot; referrerpolicy=&quot;strict-origin-when-cross-origin&quot; allowfullscreen&gt;&lt;/iframe&gt;</textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Update Video</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <script>
                        // Add Video - Auto-fill title from YouTube
                        document.getElementById('videoIframe').addEventListener('blur', function () {
                            const iframeCode = this.value;
                            const srcMatch = iframeCode.match(/src="([^"]+)"/);

                            if (srcMatch && srcMatch[1].includes("youtube.com")) {
                                const embedUrl = srcMatch[1];

                                // Extract Video ID from embed URL
                                const videoIdMatch = embedUrl.match(/\/embed\/([^\?&"]+)/);
                                if (!videoIdMatch) {
                                    alert('Could not extract video ID from iframe URL.');
                                    return;
                                }

                                const videoId = videoIdMatch[1];
                                const youtubeWatchUrl = `https://www.youtube.com/watch?v=${videoId}`;

                                // Call oEmbed API with proper watch URL
                                fetch(`https://www.youtube.com/oembed?url=${encodeURIComponent(youtubeWatchUrl)}&format=json`)
                                    .then(response => {
                                        if (!response.ok) throw new Error("Invalid YouTube video");
                                        return response.json();
                                    })
                                    .then(data => {
                                        document.getElementById('videoTitle').value = data.title;
                                    })
                                    .catch(error => {
                                        console.error('Error fetching video title:', error);
                                        alert('Failed to fetch video title. Please check the iframe code.');
                                    });
                            } else {
                                alert("Only YouTube iframe embed is supported.");
                            }
                        });

                        // Edit Video - Auto-fill title from YouTube for edit modals
                        document.addEventListener('DOMContentLoaded', function () {
                            // Handle edit video iframe changes
                            document.querySelectorAll('.video-iframe-edit').forEach(function (element) {
                                element.addEventListener('blur', function () {
                                    const iframeCode = this.value;
                                    const srcMatch = iframeCode.match(/src="([^"]+)"/);

                                    if (srcMatch && srcMatch[1].includes("youtube.com")) {
                                        const embedUrl = srcMatch[1];

                                        // Extract Video ID from embed URL
                                        const videoIdMatch = embedUrl.match(/\/embed\/([^\?&"]+)/);
                                        if (!videoIdMatch) {
                                            alert('Could not extract video ID from iframe URL.');
                                            return;
                                        }

                                        const videoId = videoIdMatch[1];
                                        const youtubeWatchUrl = `https://www.youtube.com/watch?v=${videoId}`;

                                        // Find corresponding title input
                                        const modalId = this.id.split('_')[1];
                                        const titleInput = document.getElementById('videoTitle_' + modalId);

                                        // Call oEmbed API with proper watch URL
                                        fetch(`https://www.youtube.com/oembed?url=${encodeURIComponent(youtubeWatchUrl)}&format=json`)
                                            .then(response => {
                                                if (!response.ok) throw new Error("Invalid YouTube video");
                                                return response.json();
                                            })
                                            .then(data => {
                                                if (titleInput) {
                                                    titleInput.value = data.title;
                                                }
                                            })
                                            .catch(error => {
                                                console.error('Error fetching video title:', error);
                                                alert('Failed to fetch video title. Please check the iframe code.');
                                            });
                                    } else {
                                        alert("Only YouTube iframe embed is supported.");
                                    }
                                });
                            });

                            // Set today's date for add video modal
                            const today = new Date();
                            const yyyy = today.getFullYear();
                            const mm = String(today.getMonth() + 1).padStart(2, '0');
                            const dd = String(today.getDate()).padStart(2, '0');
                            const formattedDate = `${yyyy}-${mm}-${dd}`;

                            const publishedDateInput = document.getElementById("PublishedDate");
                            if (publishedDateInput) {
                                publishedDateInput.value = formattedDate;
                            }
                        });
                    </script>

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