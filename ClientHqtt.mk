##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ClientHqtt
ConfigurationName      :=Debug
WorkspacePath          :=/home/tomek/CodeLiteWorkspace
ProjectPath            :=/home/tomek/CodeLiteWorkspace/ClientHqtt
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Tomek
Date                   :=16/07/19
CodeLitePath           :=/home/tomek/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ClientHqtt.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)pthread 
ArLibs                 :=  "pthread" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/client.cpp$(ObjectSuffix) $(IntermediateDirectory)/ClientSocket.cpp$(ObjectSuffix) $(IntermediateDirectory)/socket.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/client.cpp$(ObjectSuffix): client.cpp $(IntermediateDirectory)/client.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/tomek/CodeLiteWorkspace/ClientHqtt/client.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/client.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/client.cpp$(DependSuffix): client.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/client.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/client.cpp$(DependSuffix) -MM client.cpp

$(IntermediateDirectory)/client.cpp$(PreprocessSuffix): client.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/client.cpp$(PreprocessSuffix) client.cpp

$(IntermediateDirectory)/ClientSocket.cpp$(ObjectSuffix): ClientSocket.cpp $(IntermediateDirectory)/ClientSocket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/tomek/CodeLiteWorkspace/ClientHqtt/ClientSocket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ClientSocket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ClientSocket.cpp$(DependSuffix): ClientSocket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ClientSocket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ClientSocket.cpp$(DependSuffix) -MM ClientSocket.cpp

$(IntermediateDirectory)/ClientSocket.cpp$(PreprocessSuffix): ClientSocket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ClientSocket.cpp$(PreprocessSuffix) ClientSocket.cpp

$(IntermediateDirectory)/socket.cpp$(ObjectSuffix): socket.cpp $(IntermediateDirectory)/socket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/tomek/CodeLiteWorkspace/ClientHqtt/socket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/socket.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/socket.cpp$(DependSuffix): socket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/socket.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/socket.cpp$(DependSuffix) -MM socket.cpp

$(IntermediateDirectory)/socket.cpp$(PreprocessSuffix): socket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/socket.cpp$(PreprocessSuffix) socket.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


