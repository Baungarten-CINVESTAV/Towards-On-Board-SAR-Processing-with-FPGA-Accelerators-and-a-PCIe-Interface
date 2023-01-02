<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="FFT_test_3" top="Reorder_fft">
  <files>
    <file name="../Reorder_FFT_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Reales_ordered.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Reales_bininv.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Reales.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Imag_ordered.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Imag_bininv.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../Imag.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="FFT_reorder.h" sc="0" tb="false" cflags="" blackbox="false"/>
    <file name="FFT_Optimization_test/Reorder_FFT.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
  </files>
  <solutions>
    <solution name="solution1" status="inactive"/>
    <solution name="without_optimization" status="active"/>
    <solution name="Full_Pipeline" status="inactive"/>
    <solution name="Pipeline_unroll_pipeline" status="inactive"/>
    <solution name="Unroll" status="inactive"/>
    <solution name="Pipeline_2ports" status="inactive"/>
    <solution name="Array_p" status="inactive"/>
    <solution name="Pipeline_unroll" status="inactive"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" optimizeCompile="true" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
