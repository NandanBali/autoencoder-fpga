<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="vae_axis" name="vae_axis_ip">
    <files>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/hls/test_vae_axis.cpp" sc="0" tb="1" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware/vae_core.cpp" sc="0" tb="false" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h" csimflags="" blackbox="false"/>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/hls/vae_axis.cpp" sc="0" tb="false" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="-B/usr/bin/" mflags=""/>
    </Simulation>
</AutoPilot:project>

