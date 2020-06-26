workflow test_location {
    call find_tools
}

task find_tools {
    command <<<
        ls -l /data/HG19_ROOT/hg19_random.fa
        echo "@@@@@@@@@@@@@"
        ls -l /data/HG19_DBSNP_LEFTALIGNED_ROOT/
        echo "@@@@@@@@@@@@@"
    >>>
    output{
        String message = read_string(stdout())
    }
    runtime {
        docker: "g3chen/haplotypecaller@sha256:fc775ca12b8a8d7d0f5da32f2e6d174eb7a59f3d2e151f66941ccd265a770409"
    }
}
