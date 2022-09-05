local dap = require("dap")
dap.configurations.java = {
    {
        projectName = "my-exam-project",
        args = "",
        mainClass = "com.wuziqiu666.App",
        javaExec = "/usr/local/opt/openjdk@8/bin/java",
        name = "Launch my-exam-project",
        request = "launch",
        type = "java",
    },

    {
        projectName = "cdnewsdbv2",
        args = "--spring.profiles.active=dev",
        mainClass = "com.cuc.cdnewsdbv2.Cdnewsdbv2Application",
        javaExec = "/usr/local/opt/openjdk@8/bin/java",
        name = "Launch cdnewsdbv2",
        request = "launch",
        type = "java",
    },
}
