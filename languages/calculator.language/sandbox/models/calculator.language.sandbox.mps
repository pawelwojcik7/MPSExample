<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fe38bccb-0d55-4001-a9fb-3180494b4743(calculator.language.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="211ff9e7-35ad-47f1-82c5-4fffdeb3d048" name="calculator.language" version="0" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="0" />
    <use id="de1ad86d-6e50-4a02-b306-d4d17f64c375" name="jetbrains.mps.console.base" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="211ff9e7-35ad-47f1-82c5-4fffdeb3d048" name="calculator.language">
      <concept id="6968035171288299821" name="calculator.language.structure.InputFieldReference" flags="ng" index="2fC_oW">
        <reference id="6968035171288299933" name="field" index="2fC_qc" />
      </concept>
      <concept id="6968035171287388322" name="calculator.language.structure.Calculator" flags="ng" index="2fG3YN">
        <child id="6968035171287431385" name="outputField" index="2fG9v8" />
        <child id="6968035171287420735" name="inputField" index="2fGa0I" />
      </concept>
      <concept id="6968035171287431365" name="calculator.language.structure.OutputField" flags="ng" index="2fG9vk">
        <child id="6968035171287441466" name="expression" index="2fHOWF" />
      </concept>
      <concept id="6968035171287420703" name="calculator.language.structure.InputField" flags="ng" index="2fGa0e" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2fG3YN" id="62NrL7J0WWu">
    <property role="TrG5h" value="MyCalculator" />
    <node concept="2fGa0e" id="62NrL7J0ZyW" role="2fGa0I">
      <property role="TrG5h" value="width" />
    </node>
    <node concept="2fGa0e" id="62NrL7J0ZyY" role="2fGa0I">
      <property role="TrG5h" value="height" />
    </node>
    <node concept="2fGa0e" id="62NrL7J0Zz1" role="2fGa0I">
      <property role="TrG5h" value="depth" />
    </node>
    <node concept="2fG9vk" id="62NrL7J4gux" role="2fG9v8">
      <node concept="3cpWs3" id="62NrL7J4kpJ" role="2fHOWF">
        <node concept="2fC_oW" id="62NrL7J4s0w" role="3uHU7w">
          <ref role="2fC_qc" node="62NrL7J0ZyW" resolve="width" />
        </node>
        <node concept="3cpWs3" id="62NrL7J4j$a" role="3uHU7B">
          <node concept="3cpWs3" id="62NrL7J4jlw" role="3uHU7B">
            <node concept="3cmrfG" id="62NrL7J4iLx" role="3uHU7B">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3cmrfG" id="62NrL7J4jlz" role="3uHU7w">
              <property role="3cmrfH" value="3" />
            </node>
          </node>
          <node concept="3cmrfG" id="62NrL7J4j$d" role="3uHU7w">
            <property role="3cmrfH" value="5" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

