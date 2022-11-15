<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:212e2593-7e74-4237-a209-40bbb8ee89e4(calculator.language.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="f1u9" ref="r:65d38abe-56a4-447f-a178-64725d99f9a2(calculator.language.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="62NrL7J0uWi">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="62NrL7JbyJ6" role="3acgRq">
      <ref role="30HIoZ" to="f1u9:62NrL7J4j$H" resolve="InputFieldReference" />
      <node concept="1Koe21" id="62NrL7JbyJp" role="1lVwrX">
        <node concept="9aQIb" id="62NrL7JbyJB" role="1Koe22">
          <node concept="3clFbS" id="62NrL7JbyJC" role="9aQI4">
            <node concept="3cpWs8" id="62NrL7JbyJG" role="3cqZAp">
              <node concept="3cpWsn" id="62NrL7JbyJJ" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="62NrL7JbyJF" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="62NrL7JbyJX" role="3cqZAp">
              <node concept="37vLTI" id="62NrL7JbyT8" role="3clFbG">
                <node concept="3cpWs3" id="62NrL7Jbz2D" role="37vLTx">
                  <node concept="37vLTw" id="62NrL7Jbz2G" role="3uHU7w">
                    <ref role="3cqZAo" node="62NrL7JbyJJ" resolve="i" />
                    <node concept="raruj" id="62NrL7Jbzc4" role="lGtFl" />
                    <node concept="1ZhdrF" id="62NrL7Jbzln" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="62NrL7Jbzlo" role="3$ytzL">
                        <node concept="3clFbS" id="62NrL7Jbzlp" role="2VODD2">
                          <node concept="3clFbF" id="62NrL7Jbzvl" role="3cqZAp">
                            <node concept="2OqwBi" id="62NrL7JbzDP" role="3clFbG">
                              <node concept="1iwH7S" id="62NrL7Jbzvk" role="2Oq$k0" />
                              <node concept="1iwH70" id="62NrL7JbzPc" role="2OqNvi">
                                <ref role="1iwH77" node="62NrL7J9osn" resolve="LocalVar" />
                                <node concept="2OqwBi" id="62NrL7Jb$h6" role="1iwH7V">
                                  <node concept="30H73N" id="62NrL7Jb$5p" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="62NrL7Jb$D2" role="2OqNvi">
                                    <ref role="3Tt5mk" to="f1u9:62NrL7J4jAt" resolve="field" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="62NrL7JbyTj" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="37vLTw" id="62NrL7JbyJV" role="37vLTJ">
                  <ref role="3cqZAo" node="62NrL7JbyJJ" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="62NrL7J4ssb" role="3lj3bC">
      <ref role="30HIoZ" to="f1u9:62NrL7J0P2y" resolve="Calculator" />
      <ref role="3lhOvi" node="62NrL7J4s1l" resolve="CalculatorLayout" />
    </node>
    <node concept="2rT7sh" id="62NrL7J7nzy" role="2rTMjI">
      <property role="TrG5h" value="InputFieldDecoration" />
      <ref role="2rTdP9" to="f1u9:62NrL7J0WWv" resolve="InputField" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="62NrL7J8AP4" role="2rTMjI">
      <property role="TrG5h" value="OutputFieldDecoration:" />
      <ref role="2rTdP9" to="f1u9:62NrL7J0Zz5" resolve="OutputField" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="62NrL7J9osn" role="2rTMjI">
      <property role="TrG5h" value="LocalVar" />
      <ref role="2rTdP9" to="f1u9:62NrL7J0WWv" resolve="InputField" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
  </node>
  <node concept="312cEu" id="62NrL7J4s1l">
    <property role="TrG5h" value="MyCalculator" />
    <node concept="2tJIrI" id="62NrL7J5Vfk" role="jymVt" />
    <node concept="312cEg" id="62NrL7J60yO" role="jymVt">
      <property role="TrG5h" value="inputField" />
      <node concept="3Tm6S6" id="62NrL7J5X0K" role="1B3o_S" />
      <node concept="3uibUv" id="62NrL7J60n0" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="2ShNRf" id="62NrL7J63gi" role="33vP2m">
        <node concept="1pGfFk" id="62NrL7J6bRF" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
        </node>
      </node>
      <node concept="1WS0z7" id="62NrL7J6cqC" role="lGtFl">
        <ref role="2rW$FS" node="62NrL7J7nzy" resolve="InputFieldDecoration" />
        <node concept="3JmXsc" id="62NrL7J6cqD" role="3Jn$fo">
          <node concept="3clFbS" id="62NrL7J6cqE" role="2VODD2">
            <node concept="3clFbF" id="62NrL7J6oRm" role="3cqZAp">
              <node concept="2OqwBi" id="62NrL7J6p3M" role="3clFbG">
                <node concept="30H73N" id="62NrL7J6oRl" role="2Oq$k0" />
                <node concept="3Tsc0h" id="62NrL7J6pp9" role="2OqNvi">
                  <ref role="3TtcxE" to="f1u9:62NrL7J0WWZ" resolve="inputField" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="62NrL7J6czL" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="62NrL7J6czM" role="3zH0cK">
          <node concept="3clFbS" id="62NrL7J6czN" role="2VODD2">
            <node concept="3clFbF" id="62NrL7J6jil" role="3cqZAp">
              <node concept="2OqwBi" id="62NrL7J6k8w" role="3clFbG">
                <node concept="1iwH7S" id="62NrL7J6jik" role="2Oq$k0" />
                <node concept="2piZGk" id="62NrL7J6kk6" role="2OqNvi">
                  <node concept="Xl_RD" id="62NrL7J6kWO" role="2piZGb">
                    <property role="Xl_RC" value="inputField" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="62NrL7J6$sF" role="jymVt">
      <property role="TrG5h" value="outputField" />
      <node concept="3Tm6S6" id="62NrL7J6x3Q" role="1B3o_S" />
      <node concept="3uibUv" id="62NrL7J6$p$" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="2ShNRf" id="62NrL7J6B9c" role="33vP2m">
        <node concept="1pGfFk" id="62NrL7J6FZx" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
        </node>
      </node>
      <node concept="1WS0z7" id="62NrL7J6G2E" role="lGtFl">
        <ref role="2rW$FS" node="62NrL7J8AP4" resolve="OutputFieldDecoration:" />
        <node concept="3JmXsc" id="62NrL7J6G2H" role="3Jn$fo">
          <node concept="3clFbS" id="62NrL7J6G2I" role="2VODD2">
            <node concept="3clFbF" id="62NrL7J6G2O" role="3cqZAp">
              <node concept="2OqwBi" id="62NrL7J6G2J" role="3clFbG">
                <node concept="3Tsc0h" id="62NrL7J6G2M" role="2OqNvi">
                  <ref role="3TtcxE" to="f1u9:62NrL7J0Zzp" resolve="outputField" />
                </node>
                <node concept="30H73N" id="62NrL7J6G2N" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="62NrL7J6GkE" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="62NrL7J6GkF" role="3zH0cK">
          <node concept="3clFbS" id="62NrL7J6GkG" role="2VODD2">
            <node concept="3clFbF" id="62NrL7J6KwL" role="3cqZAp">
              <node concept="2OqwBi" id="62NrL7J6Lh3" role="3clFbG">
                <node concept="1iwH7S" id="62NrL7J6KwK" role="2Oq$k0" />
                <node concept="2piZGk" id="62NrL7J6L_a" role="2OqNvi">
                  <node concept="Xl_RD" id="62NrL7J6Mhz" role="2piZGb">
                    <property role="Xl_RC" value="outputField" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="62NrL7J6viT" role="jymVt" />
    <node concept="312cEg" id="62NrL7J4_vi" role="jymVt">
      <property role="TrG5h" value="listener" />
      <node concept="3Tm6S6" id="62NrL7J4_aW" role="1B3o_S" />
      <node concept="3uibUv" id="62NrL7J4_ug" role="1tU5fm">
        <ref role="3uigEE" to="gsia:~DocumentListener" resolve="DocumentListener" />
      </node>
      <node concept="2ShNRf" id="62NrL7J4_VN" role="33vP2m">
        <node concept="YeOm9" id="62NrL7J4B76" role="2ShVmc">
          <node concept="1Y3b0j" id="62NrL7J4B79" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="373rjd" value="true" />
            <ref role="1Y3XeK" to="gsia:~DocumentListener" resolve="DocumentListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="62NrL7J4B7a" role="1B3o_S" />
            <node concept="3clFb_" id="62NrL7J4B7o" role="jymVt">
              <property role="TrG5h" value="insertUpdate" />
              <node concept="3Tm1VV" id="62NrL7J4B7p" role="1B3o_S" />
              <node concept="3cqZAl" id="62NrL7J4B7r" role="3clF45" />
              <node concept="37vLTG" id="62NrL7J4B7s" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="62NrL7J4B7t" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="62NrL7J4B7u" role="3clF47">
                <node concept="3clFbF" id="62NrL7J5PjA" role="3cqZAp">
                  <node concept="1rXfSq" id="62NrL7J5Pj_" role="3clFbG">
                    <ref role="37wK5l" node="62NrL7J4I_z" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="62NrL7J4B7w" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="62NrL7J4B7x" role="jymVt" />
            <node concept="3clFb_" id="62NrL7J4B7y" role="jymVt">
              <property role="TrG5h" value="removeUpdate" />
              <node concept="3Tm1VV" id="62NrL7J4B7z" role="1B3o_S" />
              <node concept="3cqZAl" id="62NrL7J4B7_" role="3clF45" />
              <node concept="37vLTG" id="62NrL7J4B7A" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="62NrL7J4B7B" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="62NrL7J4B7C" role="3clF47">
                <node concept="3clFbF" id="62NrL7J5QQj" role="3cqZAp">
                  <node concept="1rXfSq" id="62NrL7J5QQi" role="3clFbG">
                    <ref role="37wK5l" node="62NrL7J4I_z" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="62NrL7J4B7E" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="62NrL7J4B7F" role="jymVt" />
            <node concept="3clFb_" id="62NrL7J4B7G" role="jymVt">
              <property role="TrG5h" value="changedUpdate" />
              <node concept="3Tm1VV" id="62NrL7J4B7H" role="1B3o_S" />
              <node concept="3cqZAl" id="62NrL7J4B7J" role="3clF45" />
              <node concept="37vLTG" id="62NrL7J4B7K" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="62NrL7J4B7L" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="62NrL7J4B7M" role="3clF47">
                <node concept="3clFbF" id="62NrL7J5UxO" role="3cqZAp">
                  <node concept="1rXfSq" id="62NrL7J5UxN" role="3clFbG">
                    <ref role="37wK5l" node="62NrL7J4I_z" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="62NrL7J4B7O" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="62NrL7J4Oqv" role="jymVt" />
    <node concept="3clFbW" id="62NrL7J4Re5" role="jymVt">
      <node concept="3cqZAl" id="62NrL7J4Re6" role="3clF45" />
      <node concept="3clFbS" id="62NrL7J4Re8" role="3clF47">
        <node concept="3clFbF" id="62NrL7J4TMh" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J4TMg" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Frame.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="Xl_RD" id="62NrL7J4Urv" role="37wK5m">
              <property role="Xl_RC" value="Calculator" />
              <node concept="17Uvod" id="62NrL7J5UVO" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <node concept="3zFVjK" id="62NrL7J5UVR" role="3zH0cK">
                  <node concept="3clFbS" id="62NrL7J5UVS" role="2VODD2">
                    <node concept="3clFbF" id="62NrL7J5UVY" role="3cqZAp">
                      <node concept="2OqwBi" id="62NrL7J5UVT" role="3clFbG">
                        <node concept="3TrcHB" id="62NrL7J5UVW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="62NrL7J5UVX" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7J4YCl" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J4YCj" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JFrame.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="62NrL7J50pg" role="37wK5m">
              <node concept="1pGfFk" id="62NrL7J57am" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int)" resolve="GridLayout" />
                <node concept="3cmrfG" id="62NrL7J58ql" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="62NrL7J59LF" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="62NrL7J6PIG" role="3cqZAp">
          <node concept="3clFbS" id="62NrL7J6PII" role="9aQI4">
            <node concept="3clFbF" id="62NrL7J6TcM" role="3cqZAp">
              <node concept="2OqwBi" id="62NrL7J6Xq1" role="3clFbG">
                <node concept="2OqwBi" id="62NrL7J6UFu" role="2Oq$k0">
                  <node concept="37vLTw" id="62NrL7J6TcK" role="2Oq$k0">
                    <ref role="3cqZAo" node="62NrL7J60yO" resolve="inputField" />
                    <node concept="1ZhdrF" id="62NrL7J7oYy" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="62NrL7J7oYz" role="3$ytzL">
                        <node concept="3clFbS" id="62NrL7J7oY$" role="2VODD2">
                          <node concept="3clFbF" id="62NrL7J7Um_" role="3cqZAp">
                            <node concept="2OqwBi" id="62NrL7J7Wkp" role="3clFbG">
                              <node concept="1iwH7S" id="62NrL7J7Um$" role="2Oq$k0" />
                              <node concept="1iwH70" id="62NrL7J7Xm1" role="2OqNvi">
                                <ref role="1iwH77" node="62NrL7J7nzy" resolve="InputFieldDecoration" />
                                <node concept="30H73N" id="62NrL7J815A" role="1iwH7V" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="62NrL7J6WOZ" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getDocument()" resolve="getDocument" />
                  </node>
                </node>
                <node concept="liA8E" id="62NrL7J6Y7n" role="2OqNvi">
                  <ref role="37wK5l" to="r791:~Document.addDocumentListener(javax.swing.event.DocumentListener)" resolve="addDocumentListener" />
                  <node concept="37vLTw" id="62NrL7J70Aq" role="37wK5m">
                    <ref role="3cqZAo" node="62NrL7J4_vi" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="62NrL7J73IT" role="3cqZAp">
              <node concept="1rXfSq" id="62NrL7J73IR" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="62NrL7J77DF" role="37wK5m">
                  <node concept="1pGfFk" id="62NrL7J7aYo" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="62NrL7J7c9V" role="37wK5m">
                      <property role="Xl_RC" value="Title" />
                      <node concept="17Uvod" id="62NrL7J7mnu" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="62NrL7J7mnx" role="3zH0cK">
                          <node concept="3clFbS" id="62NrL7J7mny" role="2VODD2">
                            <node concept="3clFbF" id="62NrL7J7mnC" role="3cqZAp">
                              <node concept="2OqwBi" id="62NrL7J7mnz" role="3clFbG">
                                <node concept="3TrcHB" id="62NrL7J7mnA" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                                <node concept="30H73N" id="62NrL7J7mnB" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="62NrL7J7gpz" role="3cqZAp">
              <node concept="1rXfSq" id="62NrL7J7gpx" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="62NrL7J7kvq" role="37wK5m">
                  <ref role="3cqZAo" node="62NrL7J60yO" resolve="inputField" />
                  <node concept="1ZhdrF" id="62NrL7J7CNE" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="62NrL7J7CNF" role="3$ytzL">
                      <node concept="3clFbS" id="62NrL7J7CNG" role="2VODD2">
                        <node concept="3clFbF" id="62NrL7J7G4y" role="3cqZAp">
                          <node concept="2OqwBi" id="62NrL7J7Hu4" role="3clFbG">
                            <node concept="1iwH7S" id="62NrL7J7G4x" role="2Oq$k0" />
                            <node concept="1iwH70" id="62NrL7J7KxI" role="2OqNvi">
                              <ref role="1iwH77" node="62NrL7J7nzy" resolve="InputFieldDecoration" />
                              <node concept="30H73N" id="62NrL7J7Qbv" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="62NrL7J7lyd" role="lGtFl">
            <node concept="3JmXsc" id="62NrL7J7lyg" role="3Jn$fo">
              <node concept="3clFbS" id="62NrL7J7lyh" role="2VODD2">
                <node concept="3clFbF" id="62NrL7J7lyn" role="3cqZAp">
                  <node concept="2OqwBi" id="62NrL7J7lyi" role="3clFbG">
                    <node concept="3Tsc0h" id="62NrL7J7lyl" role="2OqNvi">
                      <ref role="3TtcxE" to="f1u9:62NrL7J0WWZ" resolve="inputField" />
                    </node>
                    <node concept="30H73N" id="62NrL7J7lym" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="62NrL7J88GE" role="3cqZAp">
          <node concept="3clFbS" id="62NrL7J88GG" role="9aQI4">
            <node concept="3clFbF" id="62NrL7J8c8q" role="3cqZAp">
              <node concept="1rXfSq" id="62NrL7J8c8o" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="62NrL7J8eGK" role="37wK5m">
                  <node concept="1pGfFk" id="62NrL7J8mPI" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="62NrL7J8ow0" role="37wK5m">
                      <property role="Xl_RC" value="Output" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="62NrL7J8ty2" role="3cqZAp">
              <node concept="1rXfSq" id="62NrL7J8ty0" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="62NrL7J8$Cm" role="37wK5m">
                  <ref role="3cqZAo" node="62NrL7J6$sF" resolve="outputField" />
                  <node concept="1ZhdrF" id="62NrL7J8E7H" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="62NrL7J8E7I" role="3$ytzL">
                      <node concept="3clFbS" id="62NrL7J8E7J" role="2VODD2">
                        <node concept="3clFbF" id="62NrL7J8IK7" role="3cqZAp">
                          <node concept="2OqwBi" id="62NrL7J8K3j" role="3clFbG">
                            <node concept="1iwH7S" id="62NrL7J8IK6" role="2Oq$k0" />
                            <node concept="1iwH70" id="62NrL7J8LiO" role="2OqNvi">
                              <ref role="1iwH77" node="62NrL7J8AP4" resolve="OutputFieldDecoration:" />
                              <node concept="30H73N" id="62NrL7J8PIa" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="62NrL7J8_RD" role="lGtFl">
            <node concept="3JmXsc" id="62NrL7J8_RG" role="3Jn$fo">
              <node concept="3clFbS" id="62NrL7J8_RH" role="2VODD2">
                <node concept="3clFbF" id="62NrL7J8_RN" role="3cqZAp">
                  <node concept="2OqwBi" id="62NrL7J8_RI" role="3clFbG">
                    <node concept="3Tsc0h" id="62NrL7J8_RL" role="2OqNvi">
                      <ref role="3TtcxE" to="f1u9:62NrL7J0Zzp" resolve="outputField" />
                    </node>
                    <node concept="30H73N" id="62NrL7J8_RM" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7J5b5O" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J5b5M" role="3clFbG">
            <ref role="37wK5l" node="62NrL7J4I_z" resolve="update" />
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7J5hWX" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J5hWV" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JFrame.setDefaultCloseOperation(int)" resolve="setDefaultCloseOperation" />
            <node concept="10M0yZ" id="62NrL7J5peL" role="37wK5m">
              <ref role="3cqZAo" to="dxuu:~WindowConstants.EXIT_ON_CLOSE" resolve="EXIT_ON_CLOSE" />
              <ref role="1PxDUh" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7J5rAm" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J5rAk" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7J5Guv" role="3cqZAp">
          <node concept="1rXfSq" id="62NrL7J5Gut" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Window.setVisible(boolean)" resolve="setVisible" />
            <node concept="3clFbT" id="62NrL7J5JYA" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="62NrL7J4PM8" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="62NrL7J4I_z" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="62NrL7J4I_A" role="3clF47">
        <node concept="3cpWs8" id="62NrL7J98Js" role="3cqZAp">
          <node concept="3cpWsn" id="62NrL7J98Jv" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="62NrL7J98Jr" role="1tU5fm" />
            <node concept="3cmrfG" id="62NrL7J9bD8" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="17Uvod" id="62NrL7J9edi" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="62NrL7J9edj" role="3zH0cK">
                <node concept="3clFbS" id="62NrL7J9edk" role="2VODD2">
                  <node concept="3clFbF" id="62NrL7J9hRz" role="3cqZAp">
                    <node concept="2OqwBi" id="62NrL7J9k8f" role="3clFbG">
                      <node concept="1iwH7S" id="62NrL7J9hRy" role="2Oq$k0" />
                      <node concept="2piZGk" id="62NrL7J9lkU" role="2OqNvi">
                        <node concept="Xl_RD" id="62NrL7J9mxM" role="2piZGb">
                          <property role="Xl_RC" value="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1pdMLZ" id="62NrL7J9qk0" role="lGtFl">
              <ref role="2rW$FS" node="62NrL7J9osn" resolve="LocalVar" />
            </node>
          </node>
          <node concept="1WS0z7" id="62NrL7J9daU" role="lGtFl">
            <node concept="3JmXsc" id="62NrL7J9daX" role="3Jn$fo">
              <node concept="3clFbS" id="62NrL7J9daY" role="2VODD2">
                <node concept="3clFbF" id="62NrL7J9db4" role="3cqZAp">
                  <node concept="2OqwBi" id="62NrL7J9daZ" role="3clFbG">
                    <node concept="3Tsc0h" id="62NrL7J9db2" role="2OqNvi">
                      <ref role="3TtcxE" to="f1u9:62NrL7J0WWZ" resolve="inputField" />
                    </node>
                    <node concept="30H73N" id="62NrL7J9db3" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="62NrL7J9M9w" role="3cqZAp">
          <node concept="3uVAMA" id="62NrL7J9Nuj" role="1zxBo5">
            <node concept="XOnhg" id="62NrL7J9Nuk" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="62NrL7J9Nul" role="1tU5fm">
                <node concept="3uibUv" id="62NrL7J9PsU" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="62NrL7J9Num" role="1zc67A">
              <node concept="3clFbF" id="62NrL7J9SC1" role="3cqZAp">
                <node concept="2OqwBi" id="62NrL7J9TAS" role="3clFbG">
                  <node concept="37vLTw" id="62NrL7J9SC0" role="2Oq$k0">
                    <ref role="3cqZAo" node="62NrL7J9Nuk" resolve="e" />
                  </node>
                  <node concept="liA8E" id="62NrL7J9Vh7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="62NrL7J9M9y" role="1zxBo7">
            <node concept="3clFbF" id="62NrL7J9Xgt" role="3cqZAp">
              <node concept="37vLTI" id="62NrL7J9YQl" role="3clFbG">
                <node concept="2YIFZM" id="62NrL7Ja5ws" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                  <node concept="2OqwBi" id="62NrL7JabSu" role="37wK5m">
                    <node concept="37vLTw" id="62NrL7Ja9mS" role="2Oq$k0">
                      <ref role="3cqZAo" node="62NrL7J60yO" resolve="inputField" />
                      <node concept="1ZhdrF" id="62NrL7JaxLK" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="62NrL7JaxLL" role="3$ytzL">
                          <node concept="3clFbS" id="62NrL7JaxLM" role="2VODD2">
                            <node concept="3clFbF" id="62NrL7JaBLa" role="3cqZAp">
                              <node concept="2OqwBi" id="62NrL7JaE7i" role="3clFbG">
                                <node concept="1iwH7S" id="62NrL7JaBL9" role="2Oq$k0" />
                                <node concept="1iwH70" id="62NrL7JaF_h" role="2OqNvi">
                                  <ref role="1iwH77" node="62NrL7J7nzy" resolve="InputFieldDecoration" />
                                  <node concept="30H73N" id="62NrL7JaNvi" role="1iwH7V" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="62NrL7Jafni" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="62NrL7J9Xgr" role="37vLTJ">
                  <ref role="3cqZAo" node="62NrL7J98Jv" resolve="i" />
                  <node concept="1ZhdrF" id="62NrL7JaioT" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="62NrL7JaioU" role="3$ytzL">
                      <node concept="3clFbS" id="62NrL7JaioV" role="2VODD2">
                        <node concept="3clFbF" id="62NrL7Jam9w" role="3cqZAp">
                          <node concept="2OqwBi" id="62NrL7JaomK" role="3clFbG">
                            <node concept="1iwH7S" id="62NrL7Jam9v" role="2Oq$k0" />
                            <node concept="1iwH70" id="62NrL7JaqcK" role="2OqNvi">
                              <ref role="1iwH77" node="62NrL7J9osn" resolve="LocalVar" />
                              <node concept="30H73N" id="62NrL7JavZf" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1WS0z7" id="62NrL7JagGb" role="lGtFl">
                <node concept="3JmXsc" id="62NrL7JagGe" role="3Jn$fo">
                  <node concept="3clFbS" id="62NrL7JagGf" role="2VODD2">
                    <node concept="3clFbF" id="62NrL7JagGl" role="3cqZAp">
                      <node concept="2OqwBi" id="62NrL7JagGg" role="3clFbG">
                        <node concept="3Tsc0h" id="62NrL7JagGj" role="2OqNvi">
                          <ref role="3TtcxE" to="f1u9:62NrL7J0WWZ" resolve="inputField" />
                        </node>
                        <node concept="30H73N" id="62NrL7JagGk" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62NrL7JaUp1" role="3cqZAp">
          <node concept="2OqwBi" id="62NrL7JaWYH" role="3clFbG">
            <node concept="37vLTw" id="62NrL7JaUoZ" role="2Oq$k0">
              <ref role="3cqZAo" node="62NrL7J6$sF" resolve="outputField" />
              <node concept="1ZhdrF" id="62NrL7Jb7Sz" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="62NrL7Jb7S$" role="3$ytzL">
                  <node concept="3clFbS" id="62NrL7Jb7S_" role="2VODD2">
                    <node concept="3clFbF" id="62NrL7JbdBD" role="3cqZAp">
                      <node concept="2OqwBi" id="62NrL7Jbf6p" role="3clFbG">
                        <node concept="1iwH7S" id="62NrL7JbdBC" role="2Oq$k0" />
                        <node concept="1iwH70" id="62NrL7JbgKC" role="2OqNvi">
                          <ref role="1iwH77" node="62NrL7J8AP4" resolve="OutputFieldDecoration:" />
                          <node concept="30H73N" id="62NrL7Jbmlb" role="1iwH7V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="62NrL7Jb0uR" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="62NrL7Jbtqh" role="37wK5m">
                <node concept="1eOMI4" id="62NrL7Jbvp7" role="3uHU7w">
                  <node concept="33vP2n" id="62NrL7Jbvp8" role="1eOMHV">
                    <node concept="29HgVG" id="62NrL7Jbxc2" role="lGtFl">
                      <node concept="3NFfHV" id="62NrL7Jbxc3" role="3NFExx">
                        <node concept="3clFbS" id="62NrL7Jbxc4" role="2VODD2">
                          <node concept="3clFbF" id="62NrL7Jbxca" role="3cqZAp">
                            <node concept="2OqwBi" id="62NrL7Jbxc5" role="3clFbG">
                              <node concept="3TrEf2" id="62NrL7Jbxc8" role="2OqNvi">
                                <ref role="3Tt5mk" to="f1u9:62NrL7J120U" resolve="expression" />
                              </node>
                              <node concept="30H73N" id="62NrL7Jbxc9" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="62NrL7Jbq2C" role="3uHU7B" />
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="62NrL7Jb629" role="lGtFl">
            <node concept="3JmXsc" id="62NrL7Jb62c" role="3Jn$fo">
              <node concept="3clFbS" id="62NrL7Jb62d" role="2VODD2">
                <node concept="3clFbF" id="62NrL7Jb62j" role="3cqZAp">
                  <node concept="2OqwBi" id="62NrL7Jb62e" role="3clFbG">
                    <node concept="3Tsc0h" id="62NrL7Jb62h" role="2OqNvi">
                      <ref role="3TtcxE" to="f1u9:62NrL7J0Zzp" resolve="outputField" />
                    </node>
                    <node concept="30H73N" id="62NrL7Jb62i" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="62NrL7J4Icx" role="1B3o_S" />
      <node concept="3cqZAl" id="62NrL7J4I$u" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="62NrL7J4tAH" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="62NrL7J4tAI" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="62NrL7J4tAJ" role="1tU5fm">
          <node concept="17QB3L" id="62NrL7J4tAK" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="62NrL7J4tAL" role="3clF45" />
      <node concept="3Tm1VV" id="62NrL7J4tAM" role="1B3o_S" />
      <node concept="3clFbS" id="62NrL7J4tAN" role="3clF47">
        <node concept="3clFbF" id="62NrL7J4uoD" role="3cqZAp">
          <node concept="2YIFZM" id="62NrL7J4uw9" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="62NrL7J4uK8" role="37wK5m">
              <node concept="YeOm9" id="62NrL7J4xS3" role="2ShVmc">
                <node concept="1Y3b0j" id="62NrL7J4xS6" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" />
                  <node concept="3Tm1VV" id="62NrL7J4xS7" role="1B3o_S" />
                  <node concept="3clFb_" id="62NrL7J4xSl" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="62NrL7J4xSm" role="1B3o_S" />
                    <node concept="3cqZAl" id="62NrL7J4xSo" role="3clF45" />
                    <node concept="3clFbS" id="62NrL7J4xSp" role="3clF47">
                      <node concept="3clFbF" id="62NrL7J4yDX" role="3cqZAp">
                        <node concept="2ShNRf" id="62NrL7J4yDV" role="3clFbG">
                          <node concept="1pGfFk" id="62NrL7J4Rxq" role="2ShVmc">
                            <ref role="37wK5l" node="62NrL7J4Re5" resolve="MyCalculator" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="62NrL7J4xSr" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="62NrL7J4s1m" role="1B3o_S" />
    <node concept="n94m4" id="62NrL7J4s1n" role="lGtFl">
      <ref role="n9lRv" to="f1u9:62NrL7J0P2y" resolve="Calculator" />
    </node>
    <node concept="17Uvod" id="62NrL7J4sEa" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="62NrL7J4sEd" role="3zH0cK">
        <node concept="3clFbS" id="62NrL7J4sEe" role="2VODD2">
          <node concept="3clFbF" id="62NrL7J4sEk" role="3cqZAp">
            <node concept="2OqwBi" id="62NrL7J4sEf" role="3clFbG">
              <node concept="3TrcHB" id="62NrL7J4sEi" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="62NrL7J4sEj" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="62NrL7J4MjO" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
    </node>
  </node>
</model>

