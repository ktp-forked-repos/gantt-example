
(asdf:load-system "gantt-example")
(asdf:load-system "gantlet")

(in-package #:gantt-example)

(let ((file #p"output/gantt-example.pdf"))
  (ensure-directories-exist file)
  (gantlet::write-task-to-pdf-file *example-project* file :device-type '(1600 1200)))

