<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e609fc87-8bd6-46c9-8fcd-9cfd376038e9(calculator.language.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="f1u9" ref="r:65d38abe-56a4-447f-a178-64725d99f9a2(calculator.language.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="62NrL7J0P2G">
    <ref role="1XX52x" to="f1u9:62NrL7J0P2y" resolve="Calculator" />
    <node concept="3EZMnI" id="62NrL7J0TYk" role="2wV5jI">
      <node concept="3F0ifn" id="62NrL7J0TYr" role="3EZMnx">
        <property role="3F0ifm" value="calculator" />
      </node>
      <node concept="3F0A7n" id="62NrL7J0TY_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="62NrL7J0WXm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="62NrL7J0WXB" role="3EZMnx">
        <ref role="1NtTu8" to="f1u9:62NrL7J0WWZ" resolve="inputField" />
        <node concept="l2Vlx" id="62NrL7J0WXE" role="2czzBx" />
        <node concept="pj6Ft" id="62NrL7J0WXK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="62NrL7J0Z$f" role="3EZMnx" />
      <node concept="3F2HdR" id="62NrL7J0ZzR" role="3EZMnx">
        <ref role="1NtTu8" to="f1u9:62NrL7J0Zzp" resolve="outputField" />
        <node concept="l2Vlx" id="62NrL7J0ZzT" role="2czzBx" />
        <node concept="pj6Ft" id="62NrL7J0Z$2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="62NrL7J0TYn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62NrL7J0WWD">
    <ref role="1XX52x" to="f1u9:62NrL7J0WWv" resolve="InputField" />
    <node concept="3EZMnI" id="62NrL7J0WWF" role="2wV5jI">
      <node concept="3F0ifn" id="62NrL7J0WWP" role="3EZMnx">
        <property role="3F0ifm" value="input" />
      </node>
      <node concept="3F0A7n" id="62NrL7J0WWV" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="62NrL7J0WWI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62NrL7J0Zzd">
    <ref role="1XX52x" to="f1u9:62NrL7J0Zz5" resolve="OutputField" />
    <node concept="3EZMnI" id="62NrL7J0Zzf" role="2wV5jI">
      <node concept="3F0ifn" id="62NrL7J0Zzm" role="3EZMnx">
        <property role="3F0ifm" value="output" />
      </node>
      <node concept="3F1sOY" id="62NrL7J1200" role="3EZMnx">
        <ref role="1NtTu8" to="f1u9:62NrL7J120U" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="62NrL7J0Zzi" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62NrL7J4jAB">
    <ref role="1XX52x" to="f1u9:62NrL7J4j$H" resolve="InputFieldReference" />
    <node concept="1iCGBv" id="62NrL7J4jB1" role="2wV5jI">
      <ref role="1NtTu8" to="f1u9:62NrL7J4jAt" resolve="field" />
      <node concept="1sVBvm" id="62NrL7J4jB3" role="1sWHZn">
        <node concept="3F0A7n" id="62NrL7J4jBh" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

