TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++20

# set up custom build directory
#CONFIG(debug, debug|release) {
#    DESTDIR = Debug
#    OBJECTS_DIR = ./build/debug/.obj
#    MOC_DIR = ./build/debug/.moc
#    RCC_DIR = ./build/debug/.rcc
#} else {
#    DESTDIR = Release
#    OBJECTS_DIR = ./build/release/.obj
#    MOC_DIR = ./build/release/.moc
#    RCC_DIR = ./build/release/.rcc
#}

INCLUDEPATH += muparser2


QMAKE_CXXFLAGS += -std=c++11 -march=native -fopenmp
QMAKE_LFLAGS += -fopenmp

# remove possible other optimization flags
QMAKE_CFLAGS_RELEASE -= -O
QMAKE_CFLAGS_RELEASE -= -O1
QMAKE_CFLAGS_RELEASE -= -O2

# add the desired -O3 if not present
QMAKE_CFLAGS_RELEASE *= -O3


DEFINES += HAVE_STDINT_H
DEFINES += MUP_USE_OPENMP


SOURCES += \
    BenchATMSP.cpp \
    BenchExprTk.cpp \
    BenchExprTkFloat.cpp \
    BenchLepton.cpp \
    Benchmark.cpp \
    BenchMathExpr.cpp \
    BenchMuParser2.cpp \
    BenchMuParserX.cpp \
    MathExpr/example.cpp \
    MathExpr/example_c.cpp \
    MathExpr/mathexpr_c.cpp \
    cpuid.cpp \
    FormelGenerator.cpp \
    ParserBench.cpp \
    Stopwatch.cpp \
    muparser2/muParser.cpp \
    muparser2/muParserBase.cpp \
    muparser2/muParserBytecode.cpp \
    muparser2/muParserCallback.cpp \
    muparser2/muParserError.cpp \
    muparser2/muParserTokenReader.cpp \
    lepton/Parser.cpp \
    lepton/ParsedExpression.cpp \
    lepton/Operation.cpp \
    lepton/ExpressionTreeNode.cpp \
    lepton/ExpressionProgram.cpp \
    MathExpr/mathexpr.cpp \
    muparserx/mpVariable.cpp \
    muparserx/mpValueCache.cpp \
    muparserx/mpValue.cpp \
    muparserx/mpValReader.cpp \
    muparserx/mpTokenReader.cpp \
    muparserx/mpTest.cpp \
    muparserx/mpScriptTokens.cpp \
    muparserx/mpRPN.cpp \
    muparserx/mpParserMessageProvider.cpp \
    muparserx/mpParserBase.cpp \
    muparserx/mpParser.cpp \
    muparserx/mpPackageUnit.cpp \
    muparserx/mpPackageStr.cpp \
    muparserx/mpPackageNonCmplx.cpp \
    muparserx/mpPackageMatrix.cpp \
    muparserx/mpPackageCommon.cpp \
    muparserx/mpPackageCmplx.cpp \
    muparserx/mpOprtPostfixCommon.cpp \
    muparserx/mpOprtNonCmplx.cpp \
    muparserx/mpOprtMatrix.cpp \
    muparserx/mpOprtIndex.cpp \
    muparserx/mpOprtCmplx.cpp \
    muparserx/mpOprtBinCommon.cpp \
    muparserx/mpOprtBinAssign.cpp \
    muparserx/mpIValue.cpp \
    muparserx/mpIValReader.cpp \
    muparserx/mpIToken.cpp \
    muparserx/mpIPackage.cpp \
    muparserx/mpIOprt.cpp \
    muparserx/mpIfThenElse.cpp \
    muparserx/mpICallback.cpp \
    muparserx/mpIAggregator.cpp \
    muparserx/mpFuncStr.cpp \
    muparserx/mpFuncNonCmplx.cpp \
    muparserx/mpFuncMatrix.cpp \
    muparserx/mpFuncCommon.cpp \
    muparserx/mpFuncCmplx.cpp \
    muparserx/mpError.cpp \
    libcpuid/recog_intel.c \
    libcpuid/recog_amd.c \
    libcpuid/rdtsc.c \
    libcpuid/libcpuid_util.c \
    libcpuid/cpuid_main.c \
    libcpuid/asm-bits.c \
    src/BenchATMSP.cpp \
    src/BenchChaiScript.cpp \
    src/BenchExprTk.cpp \
    src/BenchExprTkFloat.cpp \
    src/BenchExprTkMPFR.cpp \
    src/BenchFParser.cpp \
    src/BenchLepton.cpp \
    src/BenchMETL.cpp \
    src/BenchMTParser.cpp \
    src/BenchMathExpr.cpp \
    src/BenchMuParser2.cpp \
    src/BenchMuParserSSE.cpp \
    src/BenchMuParserX.cpp \
    src/BenchNative.cpp \
    src/BenchTinyExpr.cpp \
    src/BenchZeCalculator.cpp \
    src/Benchmark.cpp \
    src/FormelGenerator.cpp \
    src/ParserBench.cpp \
    src/Stopwatch.cpp \
    src/cpuid.cpp

HEADERS += \
    BenchATMSP.h \
    BenchExprTk.h \
    BenchExprTkFloat.h \
    BenchFParser.h \
    BenchLepton.h \
    Benchmark.h \
    BenchMathExpr.h \
    BenchMuParser2.h \
    BenchMuParserX.h \
    cpuid.h \
    FormelGenerator.h \
    Stopwatch.h \
    muparser2/muParser.h \
    muparser2/muParserBase.h \
    muparser2/muParserBytecode.h \
    muparser2/muParserCallback.h \
    muparser2/muParserDef.h \
    muparser2/muParserError.h \
    muparser2/muParserFixes.h \
    muparser2/muParserStack.h \
    muparser2/muParserTemplateMagic.h \
    muparser2/muParserToken.h \
    muparser2/muParserTokenReader.h \
    libcpuid/recog_intel.h \
    libcpuid/recog_amd.h \
    libcpuid/libcpuid.h \
    libcpuid/libcpuid_util.h \
    libcpuid/libcpuid_types.h \
    libcpuid/libcpuid_constants.h \
    libcpuid/asm-bits.h \
    lepton/windowsIncludes.h \
    lepton/Parser.h \
    lepton/ParsedExpression.h \
    lepton/Operation.h \
    lepton/MSVC_erfc.h \
    lepton/Lepton.h \
    lepton/ExpressionTreeNode.h \
    lepton/ExpressionProgram.h \
    lepton/Exception.h \
    lepton/CustomFunction.h \
    MathExpr/mathexpr.h \
    MathExpr/mathexpr_c.h \
    muparserx/utGeneric.h \
    muparserx/suStringTokens.h \
    muparserx/suSortPred.h \
    muparserx/mpVariable.h \
    muparserx/mpValueCache.h \
    muparserx/mpValue.h \
    muparserx/mpValReader.h \
    muparserx/mpTypes.h \
    muparserx/mpTokenReader.h \
    muparserx/mpTest.h \
    muparserx/mpStack.h \
    muparserx/mpScriptTokens.h \
    muparserx/mpRPN.h \
    muparserx/mpParserMessageProvider.h \
    muparserx/mpParserBase.h \
    muparserx/mpParser.h \
    muparserx/mpPackageUnit.h \
    muparserx/mpPackageStr.h \
    muparserx/mpPackageNonCmplx.h \
    muparserx/mpPackageMatrix.h \
    muparserx/mpPackageCommon.h \
    muparserx/mpPackageCmplx.h \
    muparserx/mpOprtPostfixCommon.h \
    muparserx/mpOprtNonCmplx.h \
    muparserx/mpOprtMatrix.h \
    muparserx/mpOprtIndex.h \
    muparserx/mpOprtCmplx.h \
    muparserx/mpOprtBinCommon.h \
    muparserx/mpOprtBinAssign.h \
    muparserx/mpMatrixError.h \
    muparserx/mpMatrix.h \
    muparserx/mpIValue.h \
    muparserx/mpIValReader.h \
    muparserx/mpIToken.h \
    muparserx/mpIPrecedence.h \
    muparserx/mpIPackage.h \
    muparserx/mpIOprt.h \
    muparserx/mpIfThenElse.h \
    muparserx/mpICallback.h \
    muparserx/mpIAggregator.h \
    muparserx/mpFwdDecl.h \
    muparserx/mpFuncStr.h \
    muparserx/mpFuncNonCmplx.h \
    muparserx/mpFuncMatrix.h \
    muparserx/mpFuncCommon.h \
    muparserx/mpFuncCmplx.h \
    muparserx/mpError.h \
    muparserx/mpDefines.h \
    zecalculator/error.h \
    zecalculator/evaluation/ast/decl/evaluation.h \
    zecalculator/evaluation/ast/evaluation.h \
    zecalculator/evaluation/ast/impl/evaluation.h \
    zecalculator/evaluation/evaluation.h \
    zecalculator/evaluation/rpn/decl/evaluation.h \
    zecalculator/evaluation/rpn/evaluation.h \
    zecalculator/evaluation/rpn/impl/evaluation.h \
    zecalculator/external/expected.h \
    zecalculator/math_objects/aliases.h \
    zecalculator/math_objects/builtin_binary_functions.h \
    zecalculator/math_objects/builtin_unary_functions.h \
    zecalculator/math_objects/decl/expression.h \
    zecalculator/math_objects/decl/function.h \
    zecalculator/math_objects/decl/sequence.h \
    zecalculator/math_objects/expression.h \
    zecalculator/math_objects/forward_declares.h \
    zecalculator/math_objects/function.h \
    zecalculator/math_objects/global_constant.h \
    zecalculator/math_objects/global_variable.h \
    zecalculator/math_objects/impl/expression.h \
    zecalculator/math_objects/impl/function.h \
    zecalculator/math_objects/impl/sequence.h \
    zecalculator/math_objects/object_list.h \
    zecalculator/math_objects/sequence.h \
    zecalculator/mathworld/decl/mathworld.h \
    zecalculator/mathworld/impl/mathworld.h \
    zecalculator/mathworld/mathworld.h \
    zecalculator/parsing/data_structures/decl/node.h \
    zecalculator/parsing/data_structures/impl/node.h \
    zecalculator/parsing/data_structures/node.h \
    zecalculator/parsing/data_structures/token.h \
    zecalculator/parsing/decl/parser.h \
    zecalculator/parsing/impl/parser.h \
    zecalculator/parsing/parser.h \
    zecalculator/parsing/shared.h \
    zecalculator/utils/name_map.h \
    zecalculator/utils/refs.h \
    zecalculator/utils/slotted_deque.h \
    zecalculator/utils/substr_info.h \
    zecalculator/utils/tuple.h \
    zecalculator/utils/utils.h \
    zecalculator/zecalculator-single.h \
    zecalculator/zecalculator.h

