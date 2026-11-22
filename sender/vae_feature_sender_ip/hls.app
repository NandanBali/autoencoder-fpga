<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="vae_feature_sender" name="vae_feature_sender_ip">
    <files>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware/vae_core.cpp" sc="0" tb="1" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -I/home/nandanbali/programming/deep-svdd/autoencoder/sender -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/hls/vae_axis.cpp" sc="0" tb="1" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -I/home/nandanbali/programming/deep-svdd/autoencoder/sender -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/sender/test_vae_feature_sender.cpp" sc="0" tb="1" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -I/home/nandanbali/programming/deep-svdd/autoencoder/sender -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="/home/nandanbali/programming/deep-svdd/autoencoder/sender/vae_feature_sender.cpp" sc="0" tb="false" cflags="-std=c++14 -I/home/nandanbali/programming/deep-svdd/autoencoder/sender" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="true" ldflags="-B/usr/bin/" mflags=""/>
    </Simulation>
</AutoPilot:project>

