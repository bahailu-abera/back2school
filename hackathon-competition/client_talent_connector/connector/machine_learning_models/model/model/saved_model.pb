??
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?N?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?@*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:@*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@ *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name599*
value_dtype0	
~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_402*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	?@*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?N?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
?N?*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	?@*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?<*
dtype0*??
value??B???<BandBtheBofBtoBinBforB	exprienceBwithBcompanyBaBprojectBmonthsBdescriptionBdetailsBonBasBdataB
managementBteamBisBmaharashtraBsystemByearBtestingBdatabaseBfromBallBbusinessBdevelopmentBthanBbyBlessBtestBltdBusingBskillBjanuaryBengineeringBapplicationB	developerBpuneBjavaBclientBworkBsqlBservicesBskillsBsoftwareBresponsibilitiesBpvtBreportsBsalesBprocessBrequirementsBbeBtechnologiesBthatB
operationsBserverB	technicalBcustomerB
universityBindiaBmonthscompanyBworkingBitBvariousBdesignB	educationBwebBenvironmentBcollegeBareBpythonBatBcB
automationBlikeBwhichBengineerBroleBanBsupportBworkedB
technologyBmysqlBwindowsBtimeBperBthisBqualityB
activitiesBbasedBmanagerBprojectsB	knowledgeBissuesBusedBtrainingBmumbaiBinformationBcomputerBiBhtmlB
experienceBsystemsBetcBnewB	differentBmanagingBhandlingBtheirBrequirementBnetworkBmsBperformanceBjobBoracleB
monitoringBscienceBensureBinvolvedBanalysisBorBcontrolBtoolsBmaintenanceBusersBuserBreportBoBmaintainingBclientsB	completedBserversB	developedB
developingB	customersBserviceBsecurityBresponsibleBhadoopBrelatedBensuringBsapBrequiredBcssB
electricalBgoodBcreatingBprovideBpowerBshellBofficeB	reportingBdocumentationBetlB	solutionsBschoolBalsoBproductB
javascriptBkeyB	processesBjqueryBmaintainBhaveBinternalBapplicationsBthroughB
productionBbuildBcanBotherBupBrolesB	operatingBhiveBqueriesBintoBscriptsBconfigurationBmyBnameBlearningBsuB	preparingBmachineBdeliveryBstateBlevelBreviewBplanBcommunicationBmeetingsBendBplatformBjuneBdailyB	providingBthemBlinuxBwellBsBdocumentBoutBtimelyBmembersBbankBmanageBsolutionBdevelopBplanningBboardBunderstandingBsscBresponsibilityBcreatedB	scriptingBglobalBdiplomaBdesignedBaboutBwebsiteB
functionalBproductsBorderBmultipleBhighBcheckBadministrationBnagpurBinternationalBcasesBanyB	documentsBlimitedBrBcoreBbillingBinformaticaBwillB	languagesB	databasesBpreparationBhealthBleadBunitBsiteBactivityBwasBtoolBseniorBimplementationBajaxBintegrationBmonitorBprogrammingB	performedB	instituteBdevopsBwithinBtypeB	marketingBjobsB	bootstrapBcompleteBciscoBimplementedBfitnessB
blockchainBprogramBvendorBnetBmayB	inventoryBwritingBteamsBcreateB
deploymentBonlineB	microsoftB	frameworkB	includingBcloudB	analyzingBvendorsBidentifyBessBhscBplansBoverBhasBbackupBabilityBacrossBriskBexcelBcreationB	analyticsBpaymentBslaBscriptB
mechanicalBessfullyB
understandBsizeBgBbachelorBchangeBweeklyBscheduleBtrackBelectronicsBtitleBitsBstaffBoneBmadeBsuchBtroubleshootingBdateBnoBmanualBbasicBpersonalBinstallationBcodeBtrustBtasksBgroupBdurationBperformBmakeBtrackingBemployeeBstudioB
proceduresBprogressBdistributionB	designingB
coordinateBbasisBgesBprovidedBmonthlyBfilesBresourceBscopeB	monitoredBcenterB	honeywellBhanaBdbBexistingBstatusBbankingBstandardBsourceB	insuranceBcivilBmvcB	financialBuseBpeopleB	effectiveBduringBtablesB	secondaryBpurchaseBoperationalByearsB	schedulesBsqoopBplcB	executionBchangesBbugsBunixBtillBresearchBproposalBafterBbuildingBentireBcostBpointBhandledBtataBstakeholdersBpartBmodulesBpanelBgenerateBcaseBtransformerBspringBawsBartsBparticipatedB
processingBprivateB
inspectionBimplementingBhdfsBdaysB	standardsBsetBhrBhelpBflowB	ecommerceBreleaseBgitB	gatheringB	conductedBclusterBapiBxpBerpBresolveBphpB	corporateB	attendingBandroidBportalBdrawingBcreditBjspB
departmentBwereBlanguageBkoreaBboBanalyzeBsoBorganizationBmBdayBpanelsBcallsBuiBpositionBparticipateBanalystBthenB
regressionBissueB
enterpriseBtalendBnashikBleadingBsameBountsB	hibernateBprofileBproblemB	photoshopBtheyBqaBgraphicsB
estimationBdoneBcoordinatingBauditB	warehouseBreduceBmanufacturingBordersBinfrastructureBindustryBbestBincludesB
developersBbothB	automatedBtargetBprogramsBprepareBmeetingBareaBtestsB	resourcesBreplicationBmaterialB
industrialBfatBcontractBtextBleaderBfileBagileB	suppliersBidentifyingBfreightB	employeesBarchitectureBvisualBtheseBcriticalBoverallB
networkingBlifeBjenkinsBconsultancyBmisBdesignerBstrongBstockB	shipmentsBproblemsBloanBethereumBbeingBtargetsBprofessionalBeventsBspecificationsBsolvingBrevenueBangularBweBusBgivenB
complianceBcertificateBtechBpmoBloadB	interfaceB	followingB	expertiseBdrB
componentsBwhereBmasterBbackendBuatBsmoothBlayerBenglishB	engineersB
consultantBadministratorBwordBunderBmodelsBlineBkB	excellentBcommentsBbaseBadminBsmartB	potentialBplantBdepartmentsB
commercialBworkshopBsparkBmappingsBjulyBalongBwiproBtakingBprovidesBeachBcrmBpB
maintainedBdotBconstructionBaspnetBtroubleshootB	resolvingBqtpBhigherBfirewallB	equipmentB
efficiencyBdevicesBbackBrequestsBcoordinationBtakeB
strategiesBseleniumBnationalBjsB	operationBonsiteB	nendrasysBmodelBmanagersBhavingBcomplexBareasBapacheBreviewsBpresentBpoliciesBopportunitiesB	materialsBgettingBfieldB
conductingBcheckingBsupplyBmethodologyBloadingBhpmB	deliveredBcontrolsBachieveBimproveB
governmentBfollowBexternalBversionBthaiBspecificationBresultsBpradeshBjeeBbritishBwroteBukBshippingBmoreBmediaB
leadershipB
continuousBthBrequestBountB	migrationBlogBincludedBdrawingsBviewBpresentationBhardwareBexportBrisksBrecordsB	mentionedBmavenBlogsBdBautocadBusaBstationBsharedBsetupBrelationshipBjsonBinteractionB
foundationBextractBdeployedBdecisionBactivelyBtypesB
investmentBservletBrunningBqatarBmakingBdirectBaugustB
supportingBsideBsessionsBproperBpositiveB	functionsBchecksBunitedBstudentBregularBreconciliationB	necessaryBlogicBdefinedBbackupsBassemblyB
analyticalBagainstBviaB
schedulingBresultBmapB	executingBcashB	architectBifBhotelBeclipseBbudgetB	implementBenvironmentsBdutiesBdiscussB	dashboardBconfiguringBaboveBsentBpigBoffersBnotB	mapreduceBgymBconductB	assistantBassistB	achievingBpolytechnicBordingBjanB	generatedBflatB	debuggingBcourseBwiringBpublicBmellonB	enquiriesBbscBbnyBtransactionBtowardsBswitchesBsrBsourcesB
overseeingBleadsBgoalBessfulBdetailedBcommerceBbeenBappropriateBusageBtransformationsBtopBstakeBsettingBprocurementBprepaidBpostBmotorBmarshallingBkeepingBholdersB
categoriesBamBairBupdateBmatrixBlocalBdeliverablesB	certifiedBavailabilityBviewsB
techniquesB	structureB	strategicBrealBlearnBisoB
generatingBdeepBcommunicationsBcapitalBphuleBmongodbBmappingBmahindraBgetBcricketBcorrectBcardsB
businessesB	reviewingBrestBrelevantBqueryB	processedBonlyBmodernB	logisticsBjrB
integratedBhelpingBfeaturesBchainBcycleB	availableBsureBproperlyBpmBmemberBformBfirstBexecuteBdesignationB
completionB
algorithmsB	scenariosBraisedB	platformsBnovBinteractingBfutureBerrorsBwaysBsynopsisBstBrouterB
repositoryBrelationshipsBquickBmanagedBleBjiraBgroupsBgoBdjangoBcentreBbugBbranchesBapplyingBamravatiBadvanceBwhoBwhileBstoreB
savitribaiBplsqlBlevelsBftpBcommunicatingBbiBworldBvBtradeBstrategyB
resistanceBmainB	firewallsBdirectlyBcostsBcloselyBcapacityBtransactionsBpriceBmusicBmoduleBmajorBimBfineBfinanceBdeployB	countriesBvalidateBspecialBsafetyBourBmetricsBmeetBhandsBfloorBfinalBfilenetBcontributionBbreakerBbblBantBtableauBrepositoriesBpreparedB
organizingBmobileBheadB
generationBemailBcontactBcommissioningBauditsBsitesBsendingBsatisfactionB
resolutionBrangeBpageBosBhadB
governanceBfrontendBeveryBendtoendBdellB
customizedB	currentlyBcareBcapabilitiesBbondBazureBactionBthoseB	strengthsBsdlcBregionBpaperBmarketBinvolvesB
individualBincludeBfreeBfixingBenhanceBemailsBcardBcallBaugBappBachievedBwebiB
throughoutBspecificBperiodBnegotiatingBneedBlegalBintelligenceB
installingBimprovementBibmBhbaseBhandleBfeedsBfeedbackBfacilityBcorporationBcommunicateBassurantBupgradeBupdatingB
transitionBtransferBtomcatB
industriesBframeBdrivesBcodesB	capgeminiBbigBsummaryB
protectionB
powerpointBpossibleBpastBmostBmatlabBlearnerBjdbcBhereB	efficientBdubaiBdrivenBdiagramsBdcsB
dashboardsBcoordinatedB
consultingBcalculationBbetweenBtuningB	supportedB	regularlyBpartnersBhindiBfrontB
configuredB	companiesB
challengesBattitudeBaroundBuniverseB	transportBtransformersBscalaBrmanBreviewedBpackagesB	nutritionBnosBneedsBmarchBlocationBinternetBimageBgeneralBformatsBfdsBdefineBcontributionsBclearBcertificationBannualBvistaBtenureBrulesB	quarterlyB
proficientB
performingBliveB	invoicingBinterpersonalBfactoryBeffectivelyBdefectsBbBassignedB
validationBsendB	selectionBrightBratesB
quotationsBpanBnumberBnegotiationsBlawBinvoicesBimpactBiitBhelpsBfunctionBfixedBeptanceB	directionBcouncilBcontrollersB
controllerBveryButilityBticketB
stipulatedBsectorB	providersB
postgresqlBoffshoreBideBgrowthBdomainB
attendanceB	assistingBstorageB	regardingBrdbmsBprovenBonshoreBoilBmovexmBmonthBmbaBhmiBeB	contractsBcompetitionBcommunicatedBbodsBxBrunBproviderBountingBobjectsBfindBasaBvisioBthinkingBtermsBsuppliesBsingleBseriesBscrumB	scheduledBrestoreBndBlayoutBimportBgotBenergyB	ecosystemBconsignmentsBcentralBcableB	bachelorsBableBwaterBupdatesBtaskBroutingBproficiencyBpatchingBopenB	merchantsBfeatureBfB	bitbucketBaprilBwhenBupsBtalentB
submissionBspocBrecruitmentBrecoveryBreceivedBnlpBmethodologiesBltBliaisingBgeBfebBexposureBestablishedBenggBdrivingBdefiningBconceptsBcoBcircuitBcarBbutBanalyzedBadBactualBactionsBworksBsloanB	satelliteBpersonBpermissionsB
parametersBownB	objectiveB	linuxunixBioBinterestBhiringBdoBdefectBclinicalBbelowBbasicsBanalystsBxmlBvisitBtrendsBtemperatureBsocialBscdB	redundantB	receivingBprefatBpolicyBmannerB	lifecycleBirB	installedBinputsBincidentBhardBexportsBdoingBassociationBaimBachievementsBvalueBtrainerBstoresBstoredBrobotBroadBprimaryBlargestBlargeB
identifiedBfourB	executiveBcustomBcurrentBcontentBbuildsBadvancedBaddressBacademyBurateBubuntuBtimesBticketsBtaxBsriBsharingBqaqcBpvtltdB	programmeBplusBplayedBplaceBpaymentsBofficesBnumpyBneuralBincreaseBgoodsBfollowedB
equipmentsBdynamicB	deadlinesBclouderaBbomBautosysBautomateB	assigningBaspBacademicBwebsitesBthereB
sharepointBsalaryBrecognitionB	modellingBmetBkeepBhostedBgiveBgatherBfurtherBexperiencedB
excellenceBeventB
evaluationBcrossBbranchBautoBactiveBactBvisionButtarBthreeB	switchingBsimpleB	septemberBrootB
respectiveBregulationsBpropertyBproactivelyBphysicalBnatureB	instancesBexpensesB	detectionB	complaintBwrittenBundertakingB
telephonicB
structuredBroutersBpurposeBnyBlanB
internshipBfiveBdhcpBdeploymentsBbombayB	basicallyB	arrangingBworkflowBvpnBupgradesBtelecommunicationBsupervisingBsuggestBstartupBrelayBplayerB
plasteringBphoneBpayrollBoptimizationBnestleBmethodsBmagazineBmadhyaBlistBknownB
insulationBidentificationBhisBgmBfocusesB
escalationBdownB	determineB	deployingBdegreeB
conferenceBcodingBbuilderBamongBtallyBrightsBprofilesB	proactiveBpatternsBnodeBmanagesBincB
highlightsB
healthcareBenhancementBdutyBchannelsBbuiltBanotherBwinBwarehousingB	transformBsupplierBsunBsetsBrecommendationsBordanceBoozieBnewsBmultiBlayersBinvoiceBgridBexecutedBevaluateBentureBentitiesBeffortBcauseBbudgetsBbtechBbarclaysB	bangaloreBaddingBtestedBstaticBsecuredBsecureBschemaBreleasesBmsofficeBmrBjuniorBhistoryBdevBdesignsBdealBcoverageB
conditionsBcompetenciesBcncBchannelBadministrativeB	worldwideBwheneverBwaveBvolumeBuratelyBtrainedBtrackerBsubBstagingBstageBstaffingBsolidityBsinceB
schematicsBpressureBprB	pneumaticBpenaltyBpackageBoutstandingBnetworksBmoveBmodesBminimizeBmastersBmacBlobBliasingBlessonsB	informingBimportsBimagesBhospitalBgsmBgeaBfurnaceBfullyBfullBforecastingB	filteringBfabricationBepksBentityBensuredBengineBeastBdraftBdicomBdhlBdemandBdeliverableBcontractualBconsultantsBcoilBchennaiB
checkpointBcabinetsBbitcoinB	bengaluruBbenefitsBagreedB	adherenceB	timelinesB	telanganaBsportsBshowBrepresentativeBrationalBongoingBmultitaskingBmovingBmocksBmessageBlBieB	hyderabadBeasilyBdecBdbaBvisualizationBtravelBsvnBsourcingBseaBscreenBsbiBrawBquicklyBqcBputtyBpumpB	prototypeBposBoceanBnandedBmultinationalBmtechBmeBmaxgenBkeralaBinsightsBimprovementsB	importantBformalitiesBforecastBfixesBfilingB
discussingBdigitalB
deliveringB	componentBcompanysBcolorBcoeBclosingBboxBbeforeBassetBallowBtcsB
suggestingBsublimeB	speciallyBspaceBsafeB
predictiveBplayingBmssqlBmarB	karnatakaBitilBexpressBdeskBclassesBattendB
associatedBzoneBwwwjalloshbandcomBvalvesB	utilitiesBunitsBtwoBtrustbankcbsBstrengthBstationsBsoundBsoftgstB	sentimentBselfBroutineBrmBreturnsB
responsiveBremoteBrdB
programmesBpivotalBoldBoffBmidcBloopBlngBlankaBionicBintellimatchBinstitutionalB	incidentsBideasBhvacBhoursBhardworkingBguidanceBgstrBflumeBeasyBdueBdetailBdelhiBdeclarationBconnectivityBcoldBcoachingB	clearanceBciBcausesBbooksBblackBbcaBbazarBbajajB	allahabadBaddedBabapByourButilizationBrecordB	presidentB
presentingBorientedB
mitigationBmarathiBlogisticBlibraryBhomeBextraBdnsBculturalBcseBcommandBcarryingB	workforceBvehicleBtotalBtibcoBtelecomBtakenBsurveyBstudentsBspotfireBsixBsearchBscadaBrfidBretailBrestfulB	proposalsB	promotionB
preventiveBparkarBorganizationalBoctoberBneededBmodificationsBmodelingBmergingBmedicalBllpBlambdaBlabsBgenworthB
extractionBexchangeB
electronicBdraftingBdistrictBdiagramBcpiBcostingBclassBclaimsBapBansibleB	angularjsBaesBadvocateBadvertisingBturnBtelecommunicationsBtablespacesBsubcontractorsBsimultaneouslyBseptBselectedB
particularBparentBorganizeBnormsB
multimediaB	mirroringBmiddleBideaBhumanBgovtBgithubBerrorB
collectionBcollaborationBbetterBandorBxinfinBwouldBweeksBwasteBwalletBuBtraceabilityBtopicBteBtableBsyntelB	superviseBstudyBstreamBstoriesB	statutoryBsrsBsmallBserveB	responsesBrelianceBreceiveB	quotationBpacsB	organizedBobjectBmwBlateBjoinedB
interactedBinterBinsideBiecBhpBhotelsBgoalsBgivingB	generatesBgatewayBflexibilityB
finalizingB
extractingB	establishBegBeditingBdriveBdiseaseBdiscrepanciesBcorrespondenceB	computingBcodedBcmuBclassificationBcatiaBcarriedBcallingB	calculateBcadBbedBbandraB	authorityBauditingB
appraisalsB	alternateBalertBalB	workshopsBsolarBregistrationBpromotedBprintingBpatientBpackBoctBlinearB
innovativeB
initiativeBhouseBgloballyBfasterBfailureB	encryptedB
correctiveB	configureBadhocBzaggleBwindingBvlanBvirtualButilizedBuniqueBtransshipmentBtransitBtrainBtatBtaggingBsubjectBspeakingBsopB	softwaresBserckBsectorsB	schematicBrrBreducingB	recordingBreceivablesBrcsaBratioBquotesBquantityBproxyBprgxBpresenceBpointsBplaneBpcbBpartyBnegotiationBnBmillionB	medicinesBmcaBloopsBloadedBkomBjoiningBjbkBinstrumentationBinsightBinrBindianB	improvingBimpalaB	hydraulicBholdingBherebyB	headcountBgoldBfraudB
forwardersBfocalBflowsBfeeBfebruaryBexperionBestablishingBenhancementsBelementsBdrawBdistributedB
delinquentBcyberBconstraintsBconcurrenceB
complaintsBcompensationBcompareBcolumnsBclarityBcarryBcapitaBcabinetBcaBbrdBbillBbhopalBatosB	associateB
assessmentB	assessingB	appraisalBalwaysB	ticketingB	therapiesB	synechronBsomeB	searchingB	representBredhatB
recognizedBrackB	qualitiesB	promotingBprofessionalsB	procedureBothersBoptionsBnodejsBmotivateBmeasuresBmailBlistsBglobeBfoodBfindingBestateBelasticBearthingBdiskBconceptBcollectBbbB
automatingBasmBamericanBalertsByrsByorkBvillasBvbBuhBtreeBtrafficBteradataBsowBsmokeBsmeBsheetBseverityBservereducationB	scientistBroundBrfqBresumeBresponseB	presentedBpreBportBphaseBpartnershipsBnowBmodifiedBmitigateBmakesBkvBjohnsonBjBinterviewingB	interpretBinteractB	increasedBhousekeepingBhighlightingBfoundryBfetchBdynamicsBdriverBdowntimeB	directoryB
deliveriesBcourtB
connectionBconcernBcocoordinatingB
classifierBclarificationsBcareerBcalledBbrandBbanksB	assuranceBvisitsBvisitingBvisaBverbalB	utilizingB	upgradingBtierBshoppingBsangliB	questionsB
privilegesBpracticeBpatilB
objectivesBnotepadBmultisimB
middlewareBmangersB	locationsBlinesBinstrumentsBinfosysBindividualsBgapsBfunctionalityBfruitsBfewBfailuresBexposysBexpertBeffortsBecB
controlledBaspectsB	algorithmBwatchB
warehousesBverificationBuserfriendlyBurbanBupdatedBuftB	trainingsBtoursBtmB	timesheetBthinkBtechnocommercialB
systematicB
switchgearBstandardizedBresidentialB
relationalBqualificationsB	protocolsBproofBprodBpreproductionBpartiesBoptimizeBopsBmscBmotorsBmoneyBmicroBloyaltyBledgerBlaunchBlandingB	involvingBinputBindoreBincomeBholdsBheldBgateBgapBfillBexperiencesBexpectationsBexaminationBeuropeBeptedBeffectivenessBdossierBdispatchBdeliverBctBcountBcommunitiesBcomingBcomesBclosureBchartsBboardingBbaBatmBagentsByouBwillingBwideBuptoBswedenBsungardBsuggestionsBspaBsortingBsoftBslasBseveralBsepBreusabilityBrequireB	rajasthanBorganizationsBnocBmanagementsBlogicalBkpiBipBinstructionsBinsertBinnovationsBhotBheterogeneousBgraduateBgoqiiBfastBdeleteBcvsBcrystalBcontrollingB
clusteringBclubBbwBalreadyBallowsBaddBabstractBvsBvidyaBventuresB	vbscriptsBuaeBtmapBtesterB
testdrivenB
tensorflowBtddBtalkBtacBsuitableB	sqlserverBsprintBshivajiBseeBrslinxBrpaBrewardsBreconstructionBranchiB
purchasingBproposedBproductivityBpostmanBpoliceBpoBpasswordBpandasBpairBpaintingBossB
optimizingBoltpBnasscomBmesaB
meaningfulBmarshallBmaritalBmanualsBlongBlogixBloggerBlegacyB
launderingBlastBkycBknowledgeyesBkarateB	inouvelleBinformedB	incrementBieeeBhyperledgerBhybridBhtltBhtBhondaBhlBheatB	greyedoutBforeignBfmasBfacetsB	extractorB	extractedBextensivelyBenvironmentosBembeddedBeditorBdiverseBdisplayBdisabledB
determinedB	detailingBdemoBdeltaB
dedicationBdeclareB
dealershipB
curriculumBcrawlingBcoursesB	corpcloudB
contractorB
comparisonBclassicBcementBcbseBcaptureB
californiaBbookingBbexBbeliefBbeginnerBbarBarsysB	answeringBaegisB	actuatorsBactuatorBwillingnessBumlBtransformationB
streamlineBstandbyBspacesBslaveBsignificantBshutBsettingsBplannedB	permanentBnewlyB	mechanismBmeansBlettersBinstallBhighestBfoodsBfacilitatingBexpertsB
engagementBemergingB	dedicatedBcoordinatorBbandBauthenticationBartBappreciationBwriteBtogetherB	timeframeBtermBtamilB
substationBstatisticalB
statementsB	statementBstackBspeedBsolapurBsocietyBshipmentBroyalBresolvedBregionalB
ranjangaonB
personallyBpeerB	oversightBoverseeBorganisationBofferBnaturalBnamesBnaduBmitBminingBmeasureBmanBlowBlookupBlinkedBksaBjoinerBjaunpurBitemsBinteriorBhowBhBgermanBgasBfindingsBfeasibleBfeasibilityB	estimatesBelectricBeitherB
dimensionsB	dependingBdcBconsumedBconsistentlyB
consistentB	chinchwadBcargoB	buildingsBbreakBbrainBbookBblueBbcomBaviationBattendedBwindowBwayBviceBtrackedBtietoB
talwalkarsBswitchBsensorBremediationBrecruitBprotocolBpresentationsBobtainBnodesBnaBmiamiBmentorBllcBjntuBintroducingBguideBgenerationsBfundamentalsB
frameworksB
financialsB
downloadedBdiscussionsBconsultationBconsoleBcompileBcommandsBbrainstormingBaudienceBarrangeBappliedB
allocationBaissmsB
additionalByalamanchiliBworldsB	webdriverBwanBwaghBvolumesB	violationBventureBusefulB	universesBtruckBtrippingB	treatmentBtreasuryBtransmitterBtpsBtowersBtowerBtofaBtftpBtestngB	terminalsBtechnologicalBtakesB
tailgatingBsystemnetworkB
subprojectBstrutsBstepsBsteelBstarBsslB	specialtyBsldBsisBsiebelBsessionBservletsBsdmBsaveBsaleBrookieB
roadblocksBriseBrevisedBresponsiblitesBrespondBremedyB	referenceB	reductionB
reasonableBrdsBrakeshBrajapurBquarterBquantitativeBpushBpuBprotoBpromoteBprofitsBpriorityB
prioritiesBprintersBpricingBpptsBposoperationsBplayersB	personnelBperfectBpartsBomBofflineBmscitBmplsBmomBmodificationB
minimizingB	milestoneBmerchantB	measuringB
maximizingBmattersB
matplotlibBmassBmarutiBmanualinspectionBmagneticBlossesB	lifestyleBleaveBlearnedBlandmarkBkisanBkindBipsecB
invoicingsBinvocingB	inquiriesBinitiateBinfraBinfotekBinchargeBinboundBidtBhousingBhourBhiresBfzcoBfundingBfunctioningBftcBfoxB
forwardingBflotillaBflaskBfgsB	feedbacksBfdmBfamilyBfactsBfactBfaceBexplorerBexceedB	estimatedB	escalatedBeptBenthusiasticBenhancedBemB	eliminateBegyptBecoflexBdumpBdrivekeyBdownloadingBdocumentscreateBdobB
discussionB
diagnosticBdestinationsB
deputationBdelieryBdealerBdbmsBcustomsBcrossfunctionalBcrimesBcppBcoveredBcountryBcorporationsBcoordinatesBcompliancereportBcompetitiveB
competencyBcolumbiaBcmcBcloseBclarificationBchildBchatBchasingBchargesBcemBcapacityutilizationBcablesBbvBbrokersBbrokerBbringBbotBbodysBbirthdayBbharatBbecauseBaxisBasallB	applockerBamountBamcB
allowancesBaimsB	addressedB	activitesB	abilitiesBabacusBtoadBthingsB
structuresBstartBsmoothlyBsignBshieldBselectBscalableBsavedBrtcBrateBqualificationBprotectBontimeBmyselfBminimalBminiB	mentoringBkpisBinfotechBguiBgoingBgandhiBfundsB
facilitiesB
evaluatingBenvironmentalB
employmentBcounsellingBcalculationsBautomaticallyBapproachB	agreementBagentByarnBxoriantBvirtuousBvidarbhaBverticalBvectorBvarianceBvalveBuracyBunionBubBtsrB	translateBterminalBtenderBtangoBsupervisorsBsupervisionB
supervisedBstudyingBstressBstoringBstocksBstillBstatesBstartingBstagesBspotBspecsBsortedB
solicitingB	softtrustBshowsBshegaonBsheetsBsenseBsellingBsassB
salclusterBrowBrockwellBrfqsBreportedB	renovatedBregisterBrecsBreconciliationsBrecommendedBraveBracBpusadBpublicationBpromotionalB
programmerBprofessionallyB	producingBpreviousBppBpimpriBpilotBphotographyBpharmaceuticalBpayersBpanchakarmaBpagesB	optimisedB	obtainingBobsoleteBmvcbasedBmaintainableBmagicalfingersBlistenerB	lightningBlightingBlicenseB	liabilityBlandBlakeBlaborBkunalBkolhapurBjalloshBitemBintertekB	integrateB
innovationBinlightBindexBincorporatedB	importingBillustratorBiciciBhocBhighwayBguruB
guidelinesBgrantingBgradeBgoldsBgivesBgisssB	ghraisoniBfunBfriendlyB	frequencyBfrdBframesBformatBfolletBfinalizeBfilterBfathersBfactorsBexportedBexactBesenseBentryBendeavorBedcB
ecosystemsBdoesBdocumentingBdoctorsBdisciplinesB	difficultB	decisionsBdataikuBcsBcriminalBcorelBcoopBcontributorsBcontextBcompliancesBcommonBcommoditiesB
commitmentBcollaboratedBcollaborateBclickB
clarifyingBcicdBchavanBchampionshipBcbsBcalibrationBbroughtBbroadB	breweriesBbracketsBbasB	awarenessBaurusBasstprofessorBassistsBassignBasiaBapprovalBapplyBantiBandheriB	analytikaB	analyticaBagricultureBadobeBadditionallyB	acquiringBacquiredBaceBzensarBxillinxBxenBwatchingBwardBwarBvisitedBvdiBtsysBtriggerBtrexoBtradingBtipleBtionBthusB	thaitradeBtestersBtemplateB	symbiosisB
subversionB	submittedBstrictlyBstpBstalkB	specifiedBsortsBskilledBsinksBsimultaneousBsellersBsecretBseattleBscannedBrhdsBrgbBrespectivelyBremovingBreBpuppetBpropagationsBprofilerBpressBpresenteducationBpreparationsB1plsqljavajavaeejavascripthtmlcssjquerymysqlspringBpatniBpatientsBoptionBolderBnorthBmulBmodelsimBmanuallyBmaintenanceenhancementsB	maintainsBloginBlinuxxenBliaisonBleasesBjavaeeBjarBinterfacingBindoorBindexesBimagingBhotfixesBhostingBholdingsBhiredBhandsonBguardBfpgaBflashBfixersBfarmsBeprocessB
encryptionBeipBefficientlyBearBdynamoBdevprodBdesiredBdeploysBdealingBcryptographyBcopyB	conflictsB	configuraBcloudformationBchanceBcatersBcanadaBbvisaBbuyB	budgetingBboxesBbeanBbblwtpBbbbcBbangkokBballsBautoscalingBappdynamicsBanalyseBaixB	zhypilityB
yallaspreeBwordsBwomenBwavesBwalkBvistorBvfdBvcbB	validatedButrBurllibBtsqlrowB	treasurerB	travelledBtraceBtidalB	thereforeBtensorBtechnicallyBtechnBteacherBsvmB
supervisorBstreamliningBstrategizingB
statisticsBstakeholderB
solidworksBsoapBsizingBshriBsgdB	servicingBseniorsBsemisterBsellBselfmotivatedBsectionBseasonalB	scrappingBscrapingBscoeBscikitlearnBsavingBsanarcoB
salesforceBrpgBrotexBrotaryBromeBroiBrippleB	retailersB
respondingB
reputationBreminderB
remediatedB	relationsBregularizationBreadyBreactBrangingBrandomBrailtiffincomBquestBqualitativeBptBprovisioningB
promotionsB
productiveBpreprocessedBpostingBpoonaBpocBplantsBplacesBpipelineBpetronetBpetrochemicalBpassingBparsonBparkingBoutsideBotcBorgnizationBoliteBnumbersBnerBnearbyB	navigatedBnaviBmustBmsbteBmistakesBmeterBmetalBmeanBmatterBmarineBmanufacturedBmandirBlotsBlondonhexadBloadsBlimitationsBledBlarsenBkrantiBkpitBknnBkingdomBkgpBjioB	jharkhandBjaipurBinteractiveBintentBinovicsBinitialBileBiiBhubBhobbiesBhingnaBhealthcareinsuranceBheadquarteredBhackthonBgstBgermanyB	generatorBgatheredBgainedBfruitfulBfresherBframeworktafBfoldersBfirmsBfieldsBfetchingBfashionB
fabricatedBfabricBfabB
experianceBexpBexecutivemechanicalBexamineBethicalB
estimatingBensonoBeeBduncanBdriversB	divisionsB	displayedB	directorsB	dimensionBdimB
dictionaryBdeviceB	designnewBdebuggerBdebitBdcmtkBdatasetBdatamartBdappsBdamageBcvBcontinuouslyBcontinueBconsolidationBconglomerateB	communityBcollectionsBcollaborativeBcmsBclientprojectBclBcityB
chandrapurB	cassandraB	capturingB
candidatesBcablingB	brokerageBbringsB	breakdownBbptBblockBbiarBbacklogBawardBaverageB	auxledgerB
automotiveB
attributesBattacksB
assistenceB
assembliesBaspireBarrivalB	archivingB	approvalsBapexBanswerBandrewsBanalyticBanalysesBagroBadvertB	advantageBacbByoungBxxBwifiBvlansB
undertakenBtimelineBteachersB
tablespaceBsurfingB
standaloneBsolveB
situationsBsegmentsB
refreshersBprimeBpatchBpaloBoutsBoutlookBospfB
organisingBnutritionistBnotificationBnatBmutuallyB	migratingBltmBloginsBlifekonnectBlearntBlatestBjuniperBjalgaonBinstitutionBinitiativesBignouBhsbcBhoppingBheartBgrowBfortinetBfootBfailedBexerciseBethernetB	essentialBescalationsB	enhancingBemeaBeigrpBdiplomaticallyBdaytodayBdatapumpBdailyweeklymonthlyBcyclesB
creativityBcoolingBcoachBclustersBcitiBcentresBcentosBcapturedBbusBbatchesBarticlesBaltoBairtelB	workflowsBwholeBwestBwebservicesBwalkthroughsBvoiceBveB	variationButilizeBtroubleB
transformsBthoroughBthirdBthakurBtechnoBtargetedBsybaseBsuitedB	submittalB
structuralBsmesBsmecBsiemensBshootingBshiftBsharjahB
serversideB
seamlesslyBscreensBscratchBsciencesBschemesBsafelyBrtmnuBreusableBreliableBreliabilityBregionsBregexBregardsBredB	qualifierBpysparkBputBpurposesB	purchasesBpunjabBprototypingBprogressingBpresalesBprakashBpowerfulB	portfolioBpipingBperiodicBpasBparticipationBownedBoutputBoutcomesBorganisationalBoperatedBofficialBmovedBmodeBmobilizationBmlBminorBmediumBmcBmachinesBloggingBloansBllbBliaiseBkeysBiotBiosB
integratorBinstitutionsBindependentlyB	hospitalsBhonestyBheadingBgraphsBgoldenBfaultBfailoverB	extensiveB	exceptionBethicsBetaBequitiesBeplanBensuresBenquiryBearliestBdryB
downstreamB
disciplineBdevelopsBdealsBcourtsB
correctingB
convertingBconventionalBcontentsBconsumerB	computersBchurnBchartBbulkBbringingBbcBbayesBawardedBassistedB
assistanceBagencyBabBxamppBvodafoneBvmwareBvipBtourBtotallyB	telephoneBtBsymantecBsupportsBsteadyBsmtBskillsetBshareBsetupsBscannersBscanBruleBresearchingBrailwayB
propertiesBpiBpfBoralBmulticlientBmiBmeasurementsBmcsBmanyBmailsB	librariesBkurlaBktBjuniorsBjapanBhospitalityBhandoverBforceBfireB
exhibitionBenableBdiabetesB
datacenterBcraftB
contactingBconnectionsB	confidentBcommunicatorBbcpB	automaticBadvisorByoursBymcaBxsBwqrBwonBwinxpBwindowsserverrB
webserversB	webserverBweblogicBweblogiBwantedBwaiBvoltageB	viabilityBversaBvenueButilizationsBunstructuredBunravelB
ulhasnagarBubcBtrustedBtripsBtrenchBtransmissionBtoubroBtieBtezB	techniqueBtechnicalskillsBtaughtBsuntechnologiesBsuiteB
submittalsBsubmitBstudiesBsteeringB	stabilityBstaaBsqlplusBspsB	springmvcBspecificallyBsophiaBsonicB	sociologyBsoapboxBsklearnBsinghB
similarityB
shubhankanB	showroomsBshouldBsfBservingB	selectingBseabornBsdBscomBscmBschlumbergerBscaleBsapkalBsantBsanBsamarthBsalespersonBrtmBroboticsBrlmBrgpvBreturnBrestapiBrepresentingBrepleteBremainBrelaysBrefconBreadingBrcaBquestionnaireBquestionB
quantitiesB	publicityBproposeB
programingBprofitabilityBpricesB
presentersBpreprocessingB	preformedBpredictB	practicesBpostgressqlBpostersBplacedBpgBpfizerBpayBparticipatingBparolaBownerBovercomeBoutdoorBoptimumBopportunityBoperatingsystemBopensourcetechnologiesBonesignalwebpushnotificationsB	omegasoftBnoticesBnosqlBnordeaBnoncomplianceBnfpaB	netweaverBnegativeBnecBnafjanBmmsBmillionsBmfaBmetadataBmedalsBmecBmbmsBmatricBmatelabsBmartialBmailingBmaharajB	machineryBlondonBlocatedBlistedBlineageBlimitsBlecturerBleafletsBlayoutsBlabourBlabBkwBkvaB	kisanveerB	kirloskarBkibanaBkerasBjoinsBjformdesignerBjavajeeBiqviaBinventoriesBintroductoryB
interviewsBintervieweesBinternettechnologiesandB
internallyBinternBindiraBindiasBindentB	inceptionB	incentiveBhueBhpqcBhousesBholyBhodoopBhexawareBhertzBherBheB	hazardousB	hadoopbigBgulbargaBguidingBgskB	greenplumBgrantsBgovtofjkBgondiaBgnB
glyphisoftB	ghatkoparBgenevaBgenericBgeepasBgcpBgaugeBgajananBfundBformsBfocusBfmBfioriBfinishBfinderBfightingBextB
expressionBexhibitionsB
executionsBexceptionalB
everywhereBevenBeraBengineerhadoopBemphasisBelectricalsBearlyBductBdsBdoorsBdockerBdistBdirectorBdetectBderbyBdebuggedBddrBdatesB	dataguardB	cufflinksBcouncilsBcouldB
copyrightsBconveyorBcontributingB	contactorBconsentBconfirmBcompliedB	committeeBcommissionerB	collectedBclearedBcertificationsBcategoryBcarrierBcapaBbuildersBbriefingBbriefBbraindatawireBbootBbluemixBbiddingBbfaBbeyondB	benchmarkBbehaviorBbeansBbbaBbatteryB
backgroundBazurewebservicesBazurewebBaxBawrB	attributeB
attractiveB
attractingBattractBatexBassetsB
architectsBapproveB
applicantsBapachetomcatserverBalmightyB	alleviateBallcargoBalarmBairlinesBadditionBadaptabilityBachievementBabadBzeroBweightBweeklymonthlyBwealthBwalchandBversionsBrhelBraiseBprioritizingBprintBpolicesBperspectiveBownersB	optimizedBnonconformanceBmutualBmerakiB	listeningB
linguisticBldapBincrementalB	generallyBfrequentBfairB
facilitateBexceededB
especiallyBengagementsB
eliminatedBeligibleBedgeBcreativeB
confluenceBcomplainBcomeBchoiceBchinaB	checkoutsBawareBauthorizationBactiveactiveByeshwantraoByeolaByearlyB	xtractionBwtiBworkereducationBwnsBwmsBwindBwimsBwhywhyBwhollyBwfmBwastagesBwarrantyBwarrantsBwanlessBwalkingBwaiversBwagheducationBvpiBvishBvinayakaB
videoaudioBviamediaBviB	verticalsBvertexBversedB	variancesBvankanBvacationButmButilizationoptimizationBurringB	universalBunderwritingBunderperformingBundeliveredBunbilledBugcBudemyBudBtwiceBturnoverB
turnaroundBtunnelBtsqlBtryBtrusteeB
trippereriBtrendedBtrbBtravelsBtransportersBtransportationBtransitionsBtransitionedBtransactBtransB	tradeoffsBtracingBtqsBtortoiseBtollBtlBtimingBtieriiiBtidB
thyristorsBthermalBtgiBtestingsBteleperformanceB
telemetaryBteleconferenceBteamworkBtcoBtbesBtaskedBtappingBtapBtankerBtagBtabletBsystemeducationBsyracuseB
synthesizeBswiftBswamiB
supportiveBsuncityBsuitBsubjectsB	stringentBstrategicallyBstormBstockingBstbqtpBsspmsBspreadsheetsBspanBsouthBsopsBsophisticatedBsolutionseducationBsnoopingBsndBsnailBsnagB
smoothenedBslatatBskyBskillgapBsitBsinhagadBsingleeducationB	singaporeBsimsBsimplyB
silverlineBsikuliB	signatureBsigmaqualityBsidesB
shortfallsBshoreBshankaracharyaBsgvidyalayaBseoulBsensesB
semiannualBsemBselfassessmentsBselfassessmentB	secretaryBseatBseasonedB
seafreightBsculptBsaviantBsatisfyB	satisfiedBsapphireBsaintsBsabicBrtlfBrtBrsaBroutesBrotationBrookiesBrobustBrkimsB	reworkingB	revisionsBrevisionBrevenuesBretiredBretainB
resumptionBresultorientedBrestructuredBrespectBrepliedBreorderBremotelyBrelateBregistrationsB	registrarBregionbuBrefundsBreengineeringBreducedBredesignB
recoveriesB	recommendBrecognitionsBreceiptBrebatesBrbsBrbBratiosBraffinaderjiB	radiatorsBquickestBqueuesBquartileBpwdBpvpBpunctualityBpublishBprvB
prudentialBprotiusBpromoterBprogrammeprojectBproductivityefficiencyBproduceB	procuringBprocessdomainBprivacyBprioritizationBpresonalB
prescribedBprequalificationBpremisesBpreissuanceBpreinspectionBpreferencesBpravaranagarB	practicalBpowerpointexcellentBpowaiBpostprojectBpostissuanceBpmosBpleaseBplayBpivotsB
pittsburghB	pirangootBpinsBpickingBpheonixBpettyBpermitsBpcbsBpcBpayingBpayblesBpathsBpassportBpassedBpartnerB	partitionBparticularsBparticularlyBparkBparB
paperworksBpackingBpacedBoverviewBoverlookingBoverlandBoutwardBoutliersBoutlaysBoutboundBountholdersBountableBountabilityBotiBoroniteB	organizerBorgBoresBordinglyBoppBoperateBonetooneBonesBonceBoltcBoffsitesBofficeeducationBofferstendersBoceansB	obstaclesBnutritionalBntxpBnternetBnoticedBnoticeBnontechnicalB	nominatedBnldBniketanBnewhireBnewexistingB
negotiatedB	negotiateB	nederlandBnationsBnagelBmvaBmustanghoneywellB	murlidharB	multitaskB	muktanandBmspowerBmrsBmrnBmpB	movementsB
motivationB	motivatedBmoistureBmogBmodernizationBmmpcBmissionsBmiscellaneousBministryBminilecBmigrationmxBmidBmemosBmeggerBmeasuredBmaximizeBmathsBmaternalBmarriotBmarriedBmargBmanufactureB	mandakiniBmanagersdirectorBmanagementtransitionsB	mailboxesBmahatmaBmafoiiB	madhyamikBmacrosBlvBlossB	loopholesBlookedBlongtermBlodgedBlodgeBloadoutsBlmBlinescarriersBlikelyBlendingBleasingBleaderexecutiveBlatexBlaptopBlansBlandmarkgroupBlakesiteBkycsBkuehneB	kopargaonBkonkaniBkmeansBkickoffBkickBkhBkendouiBkeilBkeepsBkbppolytechnicBkannadaBjupyterBjoinersBjoinBjebelBjaywantBjasBjaBitrackerBissuanceBironBirisBipvBinwardBinvoicedB
invitationBinverterconverterBinverterBintroductionBinterveningBinterneteducationBinternalexternalBinterimBinteluxB	integrityBintegratorsB
instructorBinformB	influenceBindividuallyBindexingB	inclusionBinbuiltB	improviseB	impactingBimpactedBimaginativeBigbtsBiesageBicfaiBiceBiaBhvBhurdlesBhmiwebBhipotBhimherBhiltonB
highschoolBhighnetworthB	highlevelBhgBhenceBhealthyBhasselBhandoffBhandlingeducationBgujaratBgroomedB
grievancesBgreenBgraspingBgrainBgobindBgmoperationsBglasgowBgeoBgecisB	gardeningBgaiaBfzeB	funnelingBfunctionwideBfreezeB	fosteringBforwardersshippingBformulaeBformerlyBforestB	followupsBfocusedBflipBfixBfiservBfirreBfirmBfgpwpmpBfarBfanBfacultyB	factoriesBfacedBeyeB	exploringBexpenseBexpenditureBexpeditiousB	exitentryBeximB
executivesBexecB
exchangersBexcessBevBeuropeanBeurBethyleneBethydcoBesunBessoriesBessesBessayedBescalationseducationBerdasBequalBeptingBepcBenppiBenerconB	encourageBenablingBelevateB	elearningBeffortissueriskB
economicalBeasytoBearlierBeapB	eagernessBdrprBdpwnBdoubtsBdongareBdollarsBdocumentationsBdistributorBdistributionsB
distributeBdisposalBdispatchingBdiscrepancyBdifferentiateB	dieteticsBdietBdhanrajBdhabiB	dexterityBdeutscheBdeterminingB
designatedBderivingBdepartmentalBdentalBdemonstratedB	deltannexBdelinquenciesB	delayednoBdeftBdefenseBdecreaseBdeadlineBdayoffBdanceBdamageexpiredBdallasBcutB
customizesBcustomersclientsB	custodianBcurtailBcumBcubicleBctrBctlBcrunchBcrtBcrimeBcreditsBcredibilityBcrBcproBcourrierBcounterpartsBcostingsBcorrectnessB	correctlyBcorpBcordBcoopsocBcoolersB	converterBconversationBcontrollershipBcontingencyB
constraintBconstantB
confidenceB
concurrentBconcessionsBconcernsB
concerningBconceptualizingBconceptualizedBcomputerizedB	complyingBcompiledBcompilationBcommonlyBcommissionersBcomfortableBcomfortBcombinesBcollectsB
collateralBcollateBcoachmentorBcmpiB	cloudatixBcloseoutB
clearancesBcirculatingBchevronBchequeBcharterB
chargebackB	characterBchangerBchaBcentricBceBcbiBcatalystB
cashieringB	cascadingB	campaignsBcalibrationvalidationBbudgetedBbtBbrooklynB
breakdownsBbramhaB
brainsharkBbrBbottomBbodyBbmnBbiweeklyBbissBbisBbillionBbilledBbenchBbeltBbeatsBbearBbdsBbatchBbargingBbargeBbardBbankersB	balancingB	balancersBbalanceBawvpbnBavailedBatmsB
associatesBassessmentsB
aspirationBashaBaryaBarriveBarrangementBarisingBaptechB	approvingBappropriatelyBappreciationsBapacBannuallyBannotationsBannexureB	analysingBanacondaB	amsterdamBammanBamexBamericasB	amenitiesBambiguitiesBallowedBalignedBaliBakmahavidyalyaBakjuniorBaisBairlinkB
airfreightBagsB	aggregateB	aforesaidB	affectingBaedBadvisorsBadvisesBadoptBadiBadheringBadheresBadheredB	additionsBactionedBacquireBaclsBabuBabsenceBabsBabridgedBaaaBwwwstaragroproductscomBwwwshreekiaspackcoinBwwwnitkacomBwwwluckystationerycoinBwcfBvitsanindiaBvisitorsBviewerBvideosBvarietyBupgradationB
understoodBtraditionallyB
totalciteeB	temporaryBtelerikBtechwaveBtaglineBssmsBsrmceBspeakerBsnapshotB
smartbadgeBslowBshoopingBsgbauBschoolsBschemasB
schedulersBsanityBrouteBrolledBreverseBrelatingBrealityB	raspberryBprojectviiiB
projectviiB	projectviBprojectvB	projectivB
projectiiiB	projectiiBprojectiBpriyadarshiniBpragatB
pertainingBpatternBparticipantsBpamphletBpacksBomplishmentsBodataBnotesBnettechBnetezzaB	netbackupBmovieBmintmetrixcomBmesBmemoryBmariadbBmanipalBmahabaleshwartoursBlowlevelBlookBlogosBipsBinvolvementB	innovestaBincorporateBiisBidentityB	hoardingsBhelpedBhaB
guaranteedBgolchhaBgarmentsBfruitsbuddyB
fruitbuddyBfaceitB	exportingBexploratoryB
expdpimpdpBernstBepiB	economicsBecoBdoctorBdistanceBdisasterBdiiferntB	diagnosisBdevelopementBdesktopBcreatesBcrashBconsolidatedBconsistencyBconnectB
conferringBcollaboratorBcodeigniterBcloningB	classicalBcityspaceindiaBcharniBchallengingBbseBbrowserB	brochuresBbotsBblockingBbillsBbannersB	ayurvedicBayurvedaBayurBawardsBaugestBattBaddmBacademiaByesByeeByearsiByashwantraoByBxxpvistaBworkersB	workbenchB
willingdonBwhiteBwhetherB
wellversedBweekendsBweatherBwdeployBwantBwalletsBwallB	volunteerBvisualizingB	visualizeBvisualizationsBvisualforceBvistaarBviolenceB
vidyashramB
vidyapeethBvidishaBvideostreamingBvideosteamingBviableBvesselB
versiononeB	verifyingBvergataBverBvashiB	variablesBvanetvirtualBvanetBvaluesBvaluableButpB	utilisingBusiBusdB	usabilityBurjaBuploadedBunsupervisedBunixiBuneBulBuftqtpBubuntufedoracentBtwotimeBtweetsBtsputBtsortrowBtsconfigurationBtsBtrunjobBtrowgeneratorBtricksBtrialsBtrialB
treplicateBtrendBtrainingeducationBtraineeB
tradefinexBtparallelizeBtparalleizeBtournamentsB
tournamentBtouchBtorBtonsBtlogcatcherBtkBtjoinB
tjdbcinputBtjdbBtjavarowBtjavaBtirupurBtiesBthumbBthrottleBthreadBtherebyBtheeBthdfsconfigurationBthaneBtftputBtftpconnectionB
tflowmeterBtfilterBtfileoutputdelimitedB	tfilelistBtfileinputdelimitedB
tfileexistBtfidfBtestabilityBtendersB
tendermintB
templatingB	templatesBtelleBtechnicalproficienciesBteamleaderteamBtcpipBtconverttypeB	tcacheoutBtcacheinBtaxingBtarBtailorBtaggregaterowB
taggregateBtafBsyllabusBswitchedB	suzukijetBsuryaBsurfaceBsuperiorBsuperBsuggestionworkaroundB	suggestedB	sugarcaneBsufficeBsubstantialB
submittingBsubjobsBsubfilesBstretchableBstopBstlcBstepconeBsteelrawBstartedBstandBssoBsquareBsqlsBsqlplsqlBsqliteBsqlitB
sqlalchemyBspringernatureB	sportsmenBsponsorshipBspecilaizedB
sourcecodeBsorterBsnsBsmithBslotsBskncoeBsincereBsignupBshreeB
shopkeeperBshopeBshopBshanaBseverBservoBseparateBsentenceB
semifinishBsemienglishBselfconfidenceBsegmentationBseenB
securitiesBsdnbvcBsdkBsdaBscriptingprogrammingdevelopingBscipyBschraderBscholarB	schneiderB	schedulerBscenarioBsawantBsavingsBsaudiBsatisfactoryBsataraBsaralBsanitaryBsanghaviBsalesforcecomBrykBrunnerBrubiksBrsBroutinesBrolesapBrnnlstmBrltBrfmBrevolutionizingBreviewerBretrospectiveB	retestingBretaingBrestructuringB	restoringBrestfullB	renderingB	rejectionBreinforcementBregistryBreferredBredshiftB	reasoningB
reasonablyB	realisticB	readinessBreadilyBreactjsBrcBrayatBrayB	ratnamalaBrankedBrankBrameshBrajdeviBraceBrabaleBquoteBqasitBqBpythonpythonBpymysqlBpwsBpursuingBpunchingB	publishedBptfB
psychologyBpsgBproposalestimationBpromptBprogrammingxpB programmingscriptingdeveloperwebBprofoundBproficienciesBproeBproductivelyBproBprinterB
preservingB
preformingB	preferredB
predictingBpredesignedB	prabhakarB	powertechBpowercenterBposterBpositronB
politicianBpoiBpneumaticsfabricationBplottingBplotsBplatinumBplanvizBplacestravellingBpistonBpilBpidBpictB	petroleumB	pertinentBperhapsBpendingBpawarBpatnigehealthcareB
passionateB
passengersBpassBparallelBpalBpainBpaginationsBpaddleBoutlierBountabilitiesB	otherwiseB	oswindowsBosiB	orowealthBoroBoralwrittenB
optimisticBoperatesBopencvBopencartBoopBonfigurationBoemsB%numpypandasmatplolibrequestsbeautifulBnotificationsBnoteB
normalizerBnoneBnonconformityBnmfBnluBnltkBniluxBnichemarketBneutralBnearBncBnavsharB	navnirmanBnavigationsB
navigationBnativeBnanakBnamingBnallasoparaBmysqloracleBmvtBmultideveloperBmukandBmovexBmouldBmostlyBmortarBmonsterBmongodbmysqlBmoledinaBmodularB	modifyingBmodifyBmodelersBmnbBmmrdaBmmovexBmmBmissingBminimumBmillingBmicroservicesBmhBmgmtBmgmsBmgmBmfBmethodBmemoizationB
membershipBmechBmaterialerpBmartinsBmartBmarkupBmarksBmarkingBmaplesBmanpowerBmanishBmanipulatingBmanageriBmanagentB
manageableBmalaviyaB
malappuramBmakerBmainlyBmahavirB
maharshtraB
maharastraBmaharashatraBmahalB	machiningBmachinesvmlogisticBmachinesbroughtBloyalBlosB
litigationBlitecoinBlinqBliftsBliabraymysqldjangohtmlBliabraryBlfBleaseBleaningBldaBlayoutsschematicsBlavisaB	laterallyB
laboratoryBkudosBkpitsparkleBkochiBknowBklineBkindoBkhalsaBkhadakwaslaBkendoBkaylanBkanbanBkaBjunBjuicerBjswBjspmBjsfBjscoeBjournalBjoistBjobletsBjharnetBjayawantraoBjavascriptjqueryBitesBisretailBisautoBinvestmentsBinvestigativeBinvestigationsBintioBintervalBinternsB	interestsBintercollegeBintegratingBinstructionobservationsBinstiuteBinstitutionuniversityboardBinspectionsB
initiatingBinfocommBinfactorBinfaB	increasesBincomingBimporterBimplicitBijsrdBijarBideallyBhydraulicpneumaticBhonoreeBhonestBholderBhodsBhightechBhgsBheadquartersBhdfcB	havevbeenB	harnessesBharborBgyandattBgulfBguidedBgrossBgroomingBgripBgratuityB	graphicalBgoracleBgoogleBgoliveBgolangBgoetheinstituteBgoaBgmrBglobalizationBglaxoB	glassfishBgehealthcareB	gegeneratBgainBgaarmentBfxBfunctionalitiesBfujitsuBfsBfruitBfromjspmBfrancisBfrBforcecomBfootballBfmcgB	flatfilesBflatbunglowsnaBfitBfinservB	finishingBfindersBfinalizationBfigureB
fieldhoistBfiBfestivalBfeesBfdaBfanucBfactualB	factoringBfacesBextremeBexteriorBextcBexpressionsBexploreB	explainedBexpiryBexpendituresBexecutivesengineersB	excelautoBexampleBevidenceB	evaluatedBestimateB
essibilityBesdBercBequalityBepicsBenvironmentseducationBentrepreneurB
enthusiastBentailedB
enrollmentBenfieldB	endpointsBenchargeBemployabilityBemperorB	embeddingBeligibilityB
elementaryBejbBegcB
effortlessBeffluentBeasierB	dyanamicsBdrumsBdrowsyB
drowsinessBdrfBdrbamuaurangabadBdontBdonaldB	dombivaliBdomainsB
documentedBdocBdjsBdjangosB	discussedBdiscountBdisassemblyBdirectedBdimensionalityBdigitizeBdifferentdifferentBdidntBdevqaprodstandbydrBdevelopmentsupportBdevelopmentfddBdeveloperanalystBdeveloperadministratorBdetectsBdetaisBdesignereducationBdescriptiveBdeptBdependabilityB	demandingBdeloitteBdelayBdefenceBdecompositionBdealersBdcjsBdatawarehouseB	datastageB	datamitesB	databanksBdappBdammamBdahejBcybageBcwprsB	customizeBcustomisationB
curricularB
culturallyBcubeBcrudBcriculumBcredenceBcourterBcountsBcounterpartBcosineBcorrespondingB
correctionBcorporatewideetlBcordaBcooperativelyB
convincingBcontrolflashBcontractorsBcontractingBcontextvariableBcontestBconstructionbuildingBconsensuseducationB	conditionB	condenserBconcreteB	comprisesBcompetitionsB
compatibleBcompatibilityBcomparisonsB	comparingBcomparetoolB	commisionBcommerciallyBcombinedBcollectivelyBcohesiveBcognosB	cognitiveBclockBclassificationsBcjavaBchokBchessBchemtronicsBcheckinsBcheckedBchauhanBchatbotBchangingB
chandigarhBcfocBcertificatesBcentralizedBcdomeriBcasualtyBcastingBcasaBcarsBcameBcallmyBcallerBcakephpBcadmicroBcacheBbyteBbuyingBbugzillaBbucketB	briefingsBboughtBbookmyflatcomBbondsBboilerBbobjBboardsBbloodBbitBbirthBbirstBbiotechnologyBbidirectionalBbiasBbhartiBbharatiB	belongingBbcsB
bangladeshBbancsBbahraBaxialBavishkarB	atributesBathenaBatharvaBassyBassuringBassureB
asrpgrpgleBaskBasbuiltB
artificialB	areaalongBarduinoBapprovedB
approachesBapplicationsentitiesB	applaudedBapisB
apartmentsBanythingBansweredBangulareducationBandhraBanantraoBamwayBamvhighBamityB	amendmentB	ambulanceBalternativesBalterationsBalllBalarmeducationBalamuriB	akzonobelBairwaysBagnelB
aggregatorBaggarwalBadviceBadvertisementBadoptionBadharB
addressingBadaniBabbBwiseBvaryingBtypicalBtranslationBssrsBsoaBsmpBsizesB	requestedB
predefinedBphasesBperformsBpacBooadBniitBmaximumBlabelB
introducedBindepthBidBgetsBforgeBflexibleB
explainingBdrillBdevisingBdecommissioningBcutoverBcgpaBbackgroundsBarrangementsBaoBamazonBactingB	zookeeperByouthByibalByangonB
xtrabackupBxpvistaBxmlhttpBxcodeBwtpBwritersB	workspaceBworkletsBworkflowbatchesB
wmdatalakeBwmBwithinbudgetBwithcustomizedBwirelessBwinsolBwindowslinuxBwholesalersBwhatBweldingBwekaBweekendB	websphereBwayeducationB	waterfallBwareBwallaceBwalkthroughBwabBvtuBvmBvlsiBvjBvividBvishweshwariyaBvimayBvidyalankarBvidyabharatiBvideoB	viceversaBvfdsB
vegetablesBvegasBvaranasiBvalidationsBvacuumBvaconBvaButcBusesB	userlevelBuptodateBuptimeBupstreamBuomBunixeducationBunanthBuksBucsBtypetypeBtybcomBtwsBturbineBtspBtrunBtrueBtrimurtiBtrimaxBtraysBtrayBtranslatingBtracerBtptBtowardBtoolspackagesBtoolsibmBtlvBtiBthmayBtheatreBthadomalBtetrapakBtestvalidateBteresasB	terabytesBtectiaB
technosoftBtechnofunctionalBteambuildingBtbB
takshshilaBtakaliBtaiBtabularBsystemslinuxBsyncB
switchyardBswitchgearsBswB
suspiciousB	surroundsBsurgicalBsurelyB	supplyingBsunbeamBsummerBsultanBsugarsBsubscriptionsBsubmersibleBsubcontinentBstrengtheningBstormingBstayBstartersBstarterB
starschemaBstanleyBstandardizationsBstabilizersB
stabilizerBssBsrmBsprinngB	sponsoredBspiritBspentBspendingBsparksqlB	sparkcoreBsparkcontextBsparkapiBspBsortersB	sonarqubeBsoloBsolenoidBsoldBsoftwereBsoftstartersBsnappyBsmsqlBslowsB
slipstreamBskillseducationBskBsignoffsBsierraBshuntB	shrinkingBshowingBshoulderBshortlistingBshiftingBsharvariBshahaniB
settlementBserializationBserdeB
sentimentsBsensibilityBsendsBsemiBselectsBsecuringBscriptjqueryajaxB
screeningsBscoringBscieneBsciBscholarshipBschniderBschenkerBschemeB
sawitribaiBsaudagarBsatBsaperpBsansadBsamneBsadmsB
rulesbasedBruckusBrtsBrslogixBrplusBroseBrollingB
rlmreleaseBrivziBrfBrevokingBreturnedBretrieveBrestorationBresrentBresponsibilitisBresponesbilitiesBrespectfulnessBresizingBresidentialcommercialindustrialB	resettingBreschedulingBrequiresBrepresentedBrepresentationsBrepotsB	reportersBreplaceBreorganizationBrentBrenamingBremarkBrelocateeducationBrelationeducationB
regulatorsBrefreshBredoBrecordedBreasonB
realestateBreadsBrddsBrddmapreduceBrcmBrareBrangoliBrangesBranBrailBrachanaBpurgingBpunctualBpumpsB
publishingBptsBpsuBpsoBprtsB	provisionB
protectiveBprogressiveBprogrammersBprofBproducesBprocuredBproblematicB
principlesB	primarilyBpreventivepredictiveBprerecordedBpremierBpreclinicalBprcBprakshalBppsBpostimplementationBpostgresqleducationB
portfoliosBpopulateB	politicalBpointersBpodBplcscadaBplansschedulesBpjlceBpitchingBpipeBpimpleBpidsBpickupBpiaBphotographersB
philosophyBpharmacyBpharmaceuticalsBperspectivesBpersonalityB
perprocessBpermitBperformersartistsBperformancesB
percentageBpatientsoldBpathwaysBpatelBpatBpartnershipB
partitionsBpartitionmonitoringBpartitioningBparquetB	parameterBpacketBoxygenBoverseasBoverhaulingBoutreachBoswalBosmofloBosmaniaBorthopedicallyBorformatterBorderingBorchestrateBorcBoraclegeducationBoraclegBoraB
optimisingBopeningBootcBoopsBoncologyBomsBomplishBomnichannelBomansBoldestBoimBohsB	officialsBoemBobtainedBoamB	numericalBnuclearBnuancesBnovemberBnoteboolB
nosqlhbaseBnnBnfsB
newspapersB	neurologyBnavyB	naroutingBnarheBnarayangaonBnangalBmysoreBmyisamBmyanmarBmwbBmultitalentBmultifunctionalBmulticulturalBmuchBmsexceleducationBmsaBmphasisBmovementBmotilalBmortgageBmorganBmonoB
modulatingBmixingBmindBmillB
migrationsBmidiBmicrosftBmicroprocessorBmetrosBmeteringBmergerB	medicinalBmedicapsB	mediationBmecomputersBmatchedBmastekBmarketsBmarketplaceBmappletBmansaBmanoharbhaiBmangerBmanagescustomerBmaintBmahavidyalayBmacroBlucentBlookingBlongerBlockoutBlinuxubuntuBlightBlicensesBlibsBlegsBlegBlearnunlearnrelearnBlayertolayerBlayeredB	launchingBlatinBlathB
largescaleBlaggingBkublerBkohlapurBkerberosBkeenBkdBkanyaBjunnerBjungleBjourneyBjointBjohnsBjmBjijayiBjhulelalBjetalalBjdkB	jawalekerB	javaswingB-javajspservletspringhibernatestrutsjavascriptBjavacoreBjabalpurBittheBitdbsBinvoicesalongB	investorsBintermediateBinterlockingB
interfacesBinterdependenciesBintendedBintellijB
instrumentBinnodbB	injectingB
initiationBinhouseBingestB	infrasoftBinfiniteworxBinesBindigoB
increasingB	importersBimportedBimpartB
immunologyBiecexBidesB
identifiesBidentB
icgmarketsBiasBhydrocarbonBhumanaBhudsonBhrsBhpeBhortonBhordesBhiveqlBhitBhiralalB	hindustanBhighlyBheightsBhdpB	hdinsightB	hdfshbaseBhatBharyanaBharrimanBhandyBhandBhaldiramBhadoopsparksqoophiveflumepigB=hadoophivesqoopflumepigmapreducepythonimpalasparkscalasqlunixB
hadoophdfsBguwahatiB
greenfieldBgrantBgrBgovernBgoregaonBgorbanjaraeducationBgoesBgmfBghsBghatBgfsB
geographicBgenreBgdoBgauhatiBfulfillBfulfilBfssBfsdsBfrenchBfreelancersB	freelanceBfrdsB
fraudulentBframweBframessqldataBfoundationsBforumsBformalBforecastingisBfollowupBfluentBfluencyBfloatingBflaggingBfinoBfinanzaB	financingBfinallyBfilmBfellowshipsBfeederBfcbcBfasoBfarmingBfamiliarB
faithfullyBfadvBfactorBfacingBfacebookBextractsB	exportersBexpectedB	exclusiveBexcellBewalletBetsBetrackBetapBerectionBeptableBepecsBepaperBeotBentriesBentrepreneurshipBentrepreneursBentermediateBenigmaBendusersBendocrinologyBencapsulationBemrBemcBembassyBelringklingerB	elicitingBelectromechBejbsB	effectingBeffectB	eduavenirB	editorialBedhB	eclinicalBeaseBdxcBduesBdrugBdnyanganagaBdivisionB
displayingBdisksBdiscoverBdiscontinuedB
disabilityBdinmanBdimensionalBdieselBdiagnoseBdgBdfmeaBdetectorB	designersB	describesBderiveB
derivativeB	derivableBdeputyB
dependencyBdependenciesBdepBdenormalizedBdeliversBdeignB
definitiveBdeduplicationBdecideBdecemberBdebugBdebtorBdbcaBdayanandBdatedBdatasetsBdanfossBdanBcustomizationBcustodyB
custodiansBculturesBcubsBcsaBcroatiaBcreditrebillBcrawlBcraneBcpuBcoversBcourseskillBcosmossBcorejavaBcopeBconveyB	convertedB
conversantBconventBcontributedB	continuedB
continentsBconstructingB
consideredBconnectivitysB
connectingBconjunctionBconflictB
conceptionBcompressionB
complexityB
completingB
compellingBcompareeducationBcommversionBcommissionsB	cometchatB
colleaguesBcollaboratingBcloreBcitrusBcitrixBcitizensBcitizenB	citibanksBcipherBchowkiBchooseBchillerB	cheveningB	chemicalsBchemicalBcharlesBchargerBchakanBcfbcBcertainBcentrifugalBcenterxBcdssBcdhBcdcB	carlsbergB
cardiologyBcanossaBcampusBcampBcalmBcalculatingB
calculatedBcagBcaddBbustBburkenaBbureauB	bucketingBbrownBbrothersBbroseBbrokingBbrdsB	braseriesBboostBblowerBbizagiBbiopharmaceuticalB
biologicalBbidBbhuliBbentBbecomesBbecomeBbdBbbhB
basissalesBbaselineBbanyanB
bahadarpurBbackuprestoreBavroBavailB	auxiliaryBautomotivesBauthoritiesB
authorisedB	authenticB	australiaB	audiencesBatomBatdBasstBassignmentsB
assignmentBassessedBassessBaspectBashBartistBartifactB
articulateBarchivesBarB	approversBapfcB	antimoneyBangelBanalyesBanalogBamreliBamlBamfB	ambitiousBamaravtiBalwaysonBalliedBallenbreadyBallanaB	alignmentBalgoBalcatelBaircheckBailmentsBahuBahtBagriculturalBagriBagingBaggregatorsBafricaBaffectBaffairsBadvisoryBadvertisementsBadorBadministratordbmsB	adjoiningBadavanceBacidBacbsBacBabsaBzenossBworkstationBwindsorBwhoseBwellnessfitnessBwellnessBwdsBwateringBvtpBvolunteeringBvlBvirtualisationB
virtualboxBvhdBurlBupgradedowngradeBunsupportedB	unicenterBundergoBuncoverBultimateBudsBtripodB	trenchingBtranslationnatBtokenBtikonaBthriveB	textaudioBtevaBtenaciouseducationBswitchingvirtualBswedishBsupplementsBsupernettingBsufficientlyBsubscribersBsubnettingsupernettingB
subnettingBstromfurBstormfurBstartupsB	stackwiseBsplatBspanningBsolutionfloraB
solarwindsBslimmingBslenderBsinhgadB	simulatorBsifyBsiemB
servicenowBservedBseemaBseamlessBscriptingeducationBscindiaBscalpBsaverBsasBsaB	rudraakshBrsaenvisionBroutingconfigurationBrotasBrodcBrisBripvBripngBripB	retainingB
resiliencyBrepsBrepresentativesBrenewalsB
regulationBreflexologyB
recruitingBreconnaissanceBrealmBraymondBrailwirerailtelBrailwaysBradioBqueuingBqualisBqmsBpulseBprotocolsripeigrpospfbgpBproliantBprojectionsBprofessionalismBprocesseducationB
practicingBpoolsBpoliteBplazaBpickB
physiologyBpenultimateBpeerbhoyBparsersBpanoramaBpaliB	ompanyingB
ommodatingBoftenB
offloadingBobesityB	nutrientsBnutrientBnumerousBntpB	nproutingBnexusBnetflowBnavaB
nasecurityBmultivendorBmultiprotocolBmulticontextBmountingBmonthseducationBmonthlyweeklyB	moitoringBmodemBmnylBmilknetBmicrobiologyBmichealBmetlifeB	metabolicBmediumsBmedicalsBmcmBmassageB	maliciousBmalaysiaBlvpnsBlooksBlockdownBloadbalncingBlldBlimitBletsBlenovoBlegislationBlectureshipBleadersBlaptopsBkhanaBkarvyBkarmaBjwBjunipernetscreenBjuhuBjointlyBjiwajiB	jewelleryBjantaBispsBiruleBirdaB	intervlanB	interviewB
inservicesBinnotechBinnB
indicatorsB
importanceB	imitationB
iinsuranceBiessBidsB	identallyBhypertensionBhsrpBhospitalsclinicsBhomescienceBholidayBhoBhldBhelpdeskBheatingB	healthierB	hclcomnetBhclBhandingBgynaecologistsBgwaliorBgroupxBgroupersBgnsBglaxosmithklineconsumerBgenderBgarwareBfwsmBfundamentalBfortBfloridaBflBfillingBfamiliarityBfalsepositivesB	failoversBfaBexcitingBesxiBenvisionBentrustB
enthusiasmBenjoyBenginnerB	enduranceBendpointBemsBemergenciesBehterchannelBeatingBdpmcuBdmvpnBdistributorsBdifferentialBdiagnosticsBdesktopsBdeletedB	deferralsBdecommissionBdebtBdealtBdamagesBcyclingBcsmBcrimpingB	corruptedBcorrelationB	conveyingB
conversionB
contributeB
continuityBcontainB
consistingBconsideringBconsiderateB
comprisingBcomparativeBcomnetBcommensurateBcommBcomBclubsBcitiesBcisoBcheckupsBchassisB	certainlyB	cashingupBcarefulBcardiovascularBcanaraBcampsBcampaignBcaabBbusyBbsBboysBbmcBbluecoatBbhindBbhavanBbgpBbeverageBbelongsBbaxaBbaliBbalancerBassamBaskingBasasBaromatherapyB	aromathaiBaromaBarenaBapplicationeducationB
appliancesBansalonBallottedBakbarBaisectBaiB	agegroupsBaerobicsB
administerBadaptBactivitiesprogramsBacquisitionBaclBabasahebBzzBymcaustByashwantBxiiBxiBworkloadBworkerBwordvecBwithoutBwheelerBwesternBwelfareBweekBwebiuniverseBwebframeworkdjangoBwatsonBwaterproofingBwarnerBwarangalBwB
vversatileBvkkBvisvesvarayaBvistexBviseBvintelaBviewingB	versatileBverifyBvbaB
vasundharaBvariesB	valuelabsBvalleyBvalidBvaderButiliseBuserstheBuponBuphenceforthBupcomingBuntilBunicodeB	undertakeBundergraduateBuncorrectedBuitrgpvBuhsBugBudtBtypewritingB
typescriptBtwitterBturnedBtubroBtrulyBtrubaBtrivialB	tribunalsBtreesBtracksBtoyoBtouristsBtouristBtoraBtopicsBtookBtooBtodaysBtirlokBtipuBtileBtiebarBthrissurBthesisBthergaonBthemathcompanyBthanksBthankB	tenderingBteachingBteachBtdsBtctB	targetingBtalrejaBtakeoffBtabBsynthesizesBswitzerlandBswissBsvvmBsustainabilityB	surveyorsBsukhBsuisseB	sufferingBsubsequentlyBsubcontractorBstcBstatsmodelsBstaffsBstadioBsslcBssisB	srimedhavBsqlplBsqleducationBspsseducationBspringerBspotsBspinningBspecializationBspearheadingBspearheadedBspacyBsoupBsoniaB	somewhereBsolvedBsolmanBsoftwareeducationBsmsB
smartformsBsltBslabsBslBsinochemBsinghadB	sincerityB
shutteringBshopsBshirtsBshallBservesBsepsoftBselfserviceB	segmentedBsegmentBseekBsecondBsecBseBscrapBscikitB
scientificBschoolpassedB	schoolingBscalingBsblcBsavBsatishBsatiBsarimaxB
santnamdevB	santhwanaBsalariesBsaibaBsagarBryanBrvgBrunsBrrfBrpBrotBroomBroofBrolloutBrntaiBrmsBrkdfBrfiBreuseB	retentionBretailerB	resultingBresignedB	reservoirBreservationBrequisitionBrepresentationB
renovationBrelationBreimbursementB	regulatedB
registeredBregardB	recurrentBrecommendationBrecognizingB	recognizeBrecallB	reasearchB	realizingB	realetorsBrddB	ratnagiriBramBradhaBqueryingBqueenBquantifiableBqmB	qliksenseBqatifBpycharmBpunchBpsychotherapyBpsBpruningBproveBproshipBprophetBprojectresponsibilityBprojectopportunitiesBprogressionBprogreesBproducerBprmBprizeBprinceBpreventBpretendBpremiumBpreliminaryB	precisionBpreciseBprajyotiBpractitionerBpracticalityBppesBpourBpossesB
positionedBpointingBpocsBpmsBplumbingBplottedBplotlyBplannersBpivotBpiiBpicturesBphotographsBphioenixBpgpBpgdmBpersonalizationBpdfBpcaBpbaBpatronsBparseBpariporaBparentsBpapersB	paperlessBpanvelBpaintsBpainthaBpadkeBpaBoxfordB	ownershipB
overdraftsBoutputsBoutfitBoutdatedBorientationBorichidsBopinionBoperatornameB
operativesB
openclosedBonsiteoffshoreBonestopB
ommodationBoffsiteBofferingBofferedB	ntpcbrbclBnsBnovaBnotedB	notebooksBnotebookBnorwayBnormalizationBnormalBnirmitiBnetworksrnnBnetsB
netherlandBnetbeansBncrBnbfBnaukriBnaniBnaharkarBnagarBnagaonB	nabinagarBmysqlbasicsBmuweilahBmultispecialtyBmultibilliondollarBmozillaBmotionBmotiBmonorailBmohaliBmodelviewcontrollerBmmpolytechnicBmlritBmixedBmirageBmipowerintermediateBminutesBmillsBmidyearBmidriseBmicrosystemBmgtBmetricBmetafeatureBmetaB	messagingBmessagesBmentoredBmenswearBmenonBmedicineBmdBmatriculationB
matplotlivBmatplotBmathematicsB	materailsBmatBmasonryBmarvinBmarolBmargaretBmapsB	managenowBmallsBmaintenanceeducationBmahaBmacauiBluxuryBlumiraBltspiceintermediateBlstmBlsaBlovelyBlotBlookupsBlogstashBlogonBloftwareBlodhaBlnbccollegeBllmBlittleB	liquefiedBlinkedincominadityarathoreBlibBlexBlenmBleavesBlearningeducationBlearnereducationBleanBlawyersBlaterBlangagesB	landscapeBlakesBlabviewBlaboursBlaborsBkraBkoramangalaBknockoutBkingBkinfraBkinfolkBkherwadiBkamarajBkakinadaBkafkaBjulytoBjudgeBjbossB	jayashreeBjammuBjagiroadBjacobsBitselfBitrB
itechpowerBissuestasksBissuedBireportBipaBinvestigationBintraB	interteamBinterrogateBinterpretersanacondaBinterpretationBinsuredBinstructionBinspectB	inscriptsBinpythonBinplantBinjuryBinferBinetsoftBindoBindiaeducationBimportantlyB
implementsBimplementationsBimcostBillinoisBiesBidsdeveloperBidocBidentifiableB
ideeclipseBiabacBhtmlcssBhpsmBhpalmBhorizonBhopingB
holtwinterBholdBhmsBhitechBhistoricBhinduBhimBhikeB	highlightB
highenergyBhidingBhereticBheaterBhangarBhandwrittenBhandwritingB
hanapythonBhamsaBguinnessBgtsBgroundBgreatBgrcBgraspB	grandeursB
graduationBgraduatelevelBgoneBgithubcomrathorologyBgiteducationBgitbashBgirijaBghrsecB	ghatkesarBggplotBgeographiesBgassBganjBganeshBgalleryBgacBfurnishBfulltextBfulllifecycleBfrontendframeworkBfricewB
frequentlyBfraudsBfraudrelatedBfosterBforumBformulatingBformerB
formattingBforemenB	forecastsBfollowsBfolderBfluidityBflowersBflowerBflatsBflagsBflagBfittingsBfirefoxB	financehrBfighterBfgBfatherB	faridabadBfapBfahedBfahadBfacilitationBfacilitatesBeyBextensibilityB	expressedB	experinceBexitingB
excavationBexamsBewmBetpBeternisBestimationsBestadoBestablishmentsBesicB
equipementBentityframewokjqueryjavascriptBenthusiastsBenteredBenterBenoughBencodingBenabledBemotionsBemailbhawanachdBelseBelevenBeleratorB	eleratingBelasticsearchBedinburgBediBecuadorBdvdBdummiesBductingBdspBdsmBdrillsBdrillingBdressBdrainBdpfBdossiersBdocvecBdltBdiwaliBdisputesBdisputeB	discoveryB	disclosedBdisbursementB	dibrugarhB	dhmillionBdhamakaBdevolopmentB
devolopersBdeviatedBdetailexperiencesBdestinationBdesigningcreatedBdesignhoneywellBdepotB
dependableBdeficienciesBdeekshaBdeedB	deductionB
deducationBdecorB
debiankaliBdeathBddsmBdavvB
datadrivenBdaralhadassahBdairyBdaigramBdadarBcyberattacksBcustomersalesfundsBcurrencyBcuB	criteriasBcreatedmodifiedBcraftspeopleBcoverBcourseraBcounterB
counsellorBcorecodeBcooperativeBcooperationBconvertBconversionsB	continualBcontainsB	contactusBcontactsBconsumptionB	consumingBcongressBconclusionsBconceivableBcomplyBcompliesBcomplicatedB	compilingBcomparedBcompanybasicallyBcomicBcolonyB	collisionBcohesionB	cognizantBcochinBcoatingsBcmusBclosedBclinicsB	cleansingBcleaningBclassifyB	clarifiedBchockBchilledBchikmagalurBchidambaramBchequesB
checklistsB	checklistBcheackBchawlaBcharmsolmonBcharacterizationBcelebrationBcbpBcbB
categorizeB	catalogueBcasinoBcaryB
capabilityB	candidateBcancelBcalicutBcalendarBbuildcontrainingBbuildconB	budgetaryBbucketsBbtecheducationBbsccomputerBbrosBbrickBbreadsBbpbodsBbowBbottlenecksBbootstrapcsshtmlBboostingBbodiesBbobodsBbmchBblumixBblocksB	blockadesBblobBblackboxBbirthgenderyyyymmddB	biographyBbiharBbiggestBbhawanaB
bharathiarBbessBbehindB	behaviourB	beautifulBbasodaBbarshaBbarcBbaramatiBbangloreBbalajiBbackedB	avoidanceBavoidB
automobileBauthorizationsBauthenticationvintelaBaurorasB
aurangabadB	augmentedBattitudeeducationBatriBatasBaspnetcBaspcBasksBashokaBarmyBarmBarimaBarifBargusBarchitecturalBarabianBarabiaBappointmentsBappointmentBapplicationseducationBapoBapekshaBapartBanotherpublicationB	anomaliesBannaBamericaB
amendmentsBalternativeBallocateBaliaBalfalahB"aleidocodatafiorishanaewmaporetailBaleBairportBaircraftBagainBaeronauticsBaeroB	advocatorBadviserBadonetBadjustBadjunctBadichunchanagiriB	addressesB	adaptableBacnBachievementstasksByogeshBwwfBwindsBwindowseducationBvulnerabilityBvsphereBvpcBvalidityB	uploadingBupgradepatchBupgradedBunusedBundoBtroubleshoootingBtransparentBtransactionalBtraineesBtnsnamesoraBtnsnamesBtnsBtivoliBtikhatBthemeducationBtempBtechnologyutilitiesBtechnologistsBtechniquesobtainedBtdsfdwBtdpB
switchoverB
suggestionBstatsB
staticallyB	standbydrBsrvctlBsolidB	softengerBsodBsnapBsmtpBsipBshippedBshiftsB	sensitiveBselfconfidentBsecondsBscpBsanpadaBsadvidyaBrtrmsB
rotationalBrolloutsBrollbackB
rolesusersBrhBrfsmrpBrestartBresizeBreorganizesBremoveB
refreshingB	refreshesBrefreshcloningBreclaimBrebuildsBrebuildreorganizeB
rebuildingBrdlsBrcuBrajBraisingBraidBquotasBquotaBquiteBpursuedBpurgeBpumprmanB	protectedBproducedBproactivelyeducationBprivilegesrolesBpreuniversityBpracticallyBpitrBpersistsBperiodicallyBpeBpdacoeBpciBpathBpatchesBpassiveB	pacemakerBpaceBoutageBorphanedBorphanB	organisedB
ordinationBordBoraclegrBoptimazationBopeningsBonlineofflineBoncallBocmB
northboundBnonasmBnextBnetmgrnetcaBnetmgrBnetcaBmigrateBmfdbB	maximizedBmassachusettsBmarketleadingBmanagingcreatingBmanagerglobalBmajorsBmaintenancesBmaBlockingBloaderBloadbalancerB	litespeedBliteBlisteneroratnsnamesoraBlisteneroraBlinuxmicrosoftBlinksBlinkBknoxedB	kalepadalBkaleBkakatiyaBjobsmaintenanceBitskillsBiseriesBinvestBinterventionB	intervalsBinstancesdbB#installationgraphicalsilentdatabaseBinsolutionsBinnovativetechnologiesBinfopaBindiainxBimprovedBimportexportBimportdatapumpBiiiBideraBiamBhydrocarbonsBholmesBhewlettpackardBhadrBhadapsarB	guisilentBgssapiBgracBfwBfranceB	flashbackBfintechBfilesredologarchiveundoBfastestBfailoverfailbackBextentsB
extensionsB	extendingBextendedBexpimpBexpdpBexpandedB	exceedingBescalateBequityB	enrollingBemploysBelyaBelicitationBelbBedvancerBeduventuresBeclerxBebsBebossBeagleBdyBduplicationBdtsBdreamsBdpaBdmvBdmlB	diskmediaB
diskgroupsBdirectoriesB
diligentlyBdevopseducationBdeveloperslinuxBdetachBderivativesBdemandsBdeletionBdegineBdefaultBdeeplyB	deadlocksBdeadlockBddlBdbmsschedulerBdbmsjobsBdbasB	dbartisanB	datafilesBdatafeedBdatabasesmsB(databasedatafilestablespacetransactionalB
currenciesB
cumulativeBcrsctlB	crontabatBcrontabBcronjobsBcriticalityBcreationdeletionBcreatingmanagingBcourageBcostlyB	continuesBconstructiveBconfiguraingBcompriseBcompressionsB
commissionBcloningduplicateBclonesB
centralizeBcapableB	blockingsBbiztalkBbirlaBbarclaycardB	backroundBavailabiityB
autonomousB
authorizedBattsBattachBasiasBaseBarchiveBapproximatelyB
appraisingBaofptcBannetBanalyzerB
allocatingBahmadBagmirrorclusterB
aglsmirrorBadministeredBadityaB	addremoveBaddingdeletingBadaBactivepassiveBaakrutiBaagBzambiaBxlBwplB
wonderwareBwingsB	windowsxpBwhitacreBwalksBvijeocitectB	vidishtraBvettingBvesselsBvcBvbsBunityB	underwentBuloomBucpBtypingB
twidosuiteBtuvBtutorialBtubesBtrombayBtribunalBtriageBtransmittersBtrackingmangingBtlkBtirunelveliBtexasB	tektronixBtaxationBtanksBtankBtalkviewBswbebssupportB
sundaranarBsuitsBsubordinateBstrataBstepmicrowinBspreadBspokenBspecializedBslipB	sksomaiyaBskillfulBsituationseducationB	situationBsiteappBshortBshellbharatBsettlementsB	separatedBsensorsBselfstarterBselecBseamBschneiderelectricB	scadaifixBsavvyB
satisfyingBruahBroboticBrkBrichB	rheinlandBrespondentsB
researcherB	remindersBrelatesBrefinedBredwoodBrecentlyBrecalibrationBravichanderBrapportB
purvanchalBpunjabiBpulpBproteusB
prosecutedB
profitableBproficyBpretrialBpreferB
precedentsBprasannaB	practicedBpomBpolarisBpleadBplasticsB$planningschedulingreschedulingsplitsB	plaintiffBplaintBphythonBphoenixBpharmaB	petitionsBpenchantBpeersBpaytechB
parivartanBpanjabB	packagingBountscustomersstoresBorissaBoperationeducationBopcBonboardBomronBomplishmentB
oceangoingBobservationBnipponBnibsnitsB	nhibernetBnewcomerBnessaBneighborhoodB
negotiatesBnagalandBmyattcomBmorigaonBmobileappdevkauapcBmicrosystemsB	messengerBmediatorBmarriageBmanufacturersBmanonmaniamBmaladB	maintaingBmaharajaBmadrasBlrcBlokBloBllB
literatureBlicensedB
liaisoningBleloBleadsoleBlawyerBlawsBlaweducationBladderBkukaBkrBknowsBkepwareBkalyanBjudicialB
judicatureB
journalistBjerseyBintouchB
intimationBintelligenforBinstallationsBinsertsBinquiryBinjectorBinfonetBinfoBinertB	inductionBindependentB	indemnityBimsB	iitbombayBiggBifixBieltsBibatisBhrmsBhpqcalmBhpcBhiralBhearBhayaanBhartBhandlesBhaayanBgrapheducationBgoregoanBglandingBgirlsB	genentechBgefanucBgangaBgamesBfsdBforwardBformulationBfloatBfittingB
finalisingBfederalBfactotytalkB	extrovertBextraeducationBexponentiallyBetdsBessionBessibleB
engineeredBempowerB	eletricalBdruckBdrtBdrasticallyB
drambedkarBdpBdowntownBdolBdivorcesBdivorceBdividerBdisciplinaryBcxprogrammerBcugBcsicamBcrsBcriminologyBcriminalcivilBcrashingB	coworkersBcounselsBcounselBcooptedB	connectorB	conformiqBconfigurationsB
conclusionB	conciselyBconciliatorB	concernedBcomprehensiveB	competentB	committedBcodesysB
codestrikeBclearlyBclaimBclacuttaBcjmBcitectscadaBchurchB	christianBcentralisedBcalibrationsBcacharBburdwanBbscitBbrowserbasedBbrandsB	brahmapurBbputBbottleBbmmBbioinformaticsBbiogenB	bilingualBbikanerBbhawanBbciBbauBbannerBballbBbailBautomationtestingBautoitB
audiovideoBattorneyBastellasBasmitaB	artifactsBarrivingB
arbitratorBappsB	appellateBappealsBanushaktinagarBambedkarBaltivarBairoliBaibeB
agreementsBadmittedBadministeringBadalatBzdBxsltBxmlxamlxsltB
xframeworkBxentoBwwwviralsocialscomBwwwstplafricaonlinecomBwwwstplafricacomBwwwstexpertcomBwwwspeedyceuscomBwwwsmashingdaycomBwwwsababanlbookingBwwwrimsyseuBwwwpropertysolutionscomBwwwprayerlisterorgBwwwphysicaltherapyhiucomBwwwmtpiancomBwwwjustbecomBwwwjBwwwfamilylinkcomBwwwceusnursingcomBwebdataBwearableBwachoviaBvqiB
versioningBventurusBvbscriptBvbnetBtuluBtoscaBtokyoBthunderbirdBthinkerBtfsBtechnicalfunctionalBtdmBtdBtailBswingBsurveillanceB	sunnyvaleBsubconBsqaB
specializeBsmashingdayBsmallbusinessBsikkimBsignoffBsharepointeducationBshadowB
servicewebB
servicewcfBservicesolutionBserviceorderBsearchnaturalB	scorecardBreviseB
resourcingBremanageB	rehearsalB
regulatoryBrecentBrebadgedBrallyBqlikviewBprovingBproposalsrfeBpromarkBprofitBproductssolutionsB
preventionBpretransitionBpolandBpmrBplannerBoscarBopexBontrackBonestoptestshopB
onboardingBohioB
offshoringBoatBnunitBnonfunctionalBnonBnextgenB	newcastleBnetworkinfrastructureBmwsBmvpBmultiprofiledBmossBmonitorsBmeasurementBmazaBmaximizationBmapcoBmanagerprojectBmanagereducationB
macromediaBltdpuneBlotusBlisaB
learningaiBleakageBleadtechnicalBlaravelBjspservletswingB
jspservletBjavascriptjqueryjsonB
iphoneipadBipadBinfobankingBhimalayaBharvardBhardwarenetworkingBgolwinrealityBgatesBfuelBforwardreverseBexpandB	exercisesBexattBesignBesayaBenterprisewideBdreamweaverBdollBdishaB	discountsBdhtmlB	devsecopsBdevelopmentsBdensityBcxmtBcustomerstakeholdersponsorBcucumberBcslkmsBcsatBcruBcriptBcountersignBcompB	collabnetBcmcsBcentrexBcentreonBceesBcbilBcateringBcatdmBcarolinaB	capexopexBbizcompBbizBbercoBbddBbamBariaBaprBappleBanjularBanetorgB
androidiosBampdBalmBadhere
??
Const_5Const*
_output_shapes	
:?<*
dtype0	*??
value??B??	?<"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                              
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_7227
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_7232
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?F
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?E
value?EB?E B?E
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
?

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*
?

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem!m?"m?)m?*m?1m?2m?9m?:m?v?!v?"v?)v?*v?1v?2v?9v?:v?*
C
1
!2
"3
)4
*5
16
27
98
:9*
C
0
!1
"2
)3
*4
15
26
97
:8*
* 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Kserving_default* 
7
Llookup_table
Mtoken_counts
N	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

10
21*
* 
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

m0
n1*
* 
* 
* 
R
o_initializer
p_create_resource
q_initialize
r_destroy_resource* 
?
s_create_resource
t_initialize
u_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	vtotal
	wcount
x	variables
y	keras_api*
H
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

v0
w1*

x	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

z0
{1*

}	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
*serving_default_text_vectorization_1_inputPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall*serving_default_text_vectorization_1_input
hash_tableConstConst_1Const_2embedding/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_7052
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst_6*3
Tin,
*2(		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_7377
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/embedding/embeddings/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_7498??
??
?
__inference__wrapped_model_6228
text_vectorization_1_inputf
bsequential_1_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleg
csequential_1_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	=
9sequential_1_text_vectorization_1_string_lookup_1_equal_y@
<sequential_1_text_vectorization_1_string_lookup_1_selectv2_t	@
,sequential_1_embedding_embedding_lookup_6192:
?N?G
3sequential_1_dense_4_matmul_readvariableop_resource:
??C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?F
3sequential_1_dense_5_matmul_readvariableop_resource:	?@B
4sequential_1_dense_5_biasadd_readvariableop_resource:@E
3sequential_1_dense_6_matmul_readvariableop_resource:@ B
4sequential_1_dense_6_biasadd_readvariableop_resource: E
3sequential_1_dense_7_matmul_readvariableop_resource: B
4sequential_1_dense_7_biasadd_readvariableop_resource:
identity??+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?*sequential_1/dense_5/MatMul/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?*sequential_1/dense_6/MatMul/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?*sequential_1/dense_7/MatMul/ReadVariableOp?'sequential_1/embedding/embedding_lookup?Usequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2}
-sequential_1/text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*#
_output_shapes
:??????????
4sequential_1/text_vectorization_1/StaticRegexReplaceStaticRegexReplace6sequential_1/text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
6sequential_1/text_vectorization_1/StaticRegexReplace_1StaticRegexReplace=sequential_1/text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite t
3sequential_1/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
;sequential_1/text_vectorization_1/StringSplit/StringSplitV2StringSplitV2?sequential_1/text_vectorization_1/StaticRegexReplace_1:output:0<sequential_1/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
Asequential_1/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Csequential_1/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Csequential_1/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
;sequential_1/text_vectorization_1/StringSplit/strided_sliceStridedSliceEsequential_1/text_vectorization_1/StringSplit/StringSplitV2:indices:0Jsequential_1/text_vectorization_1/StringSplit/strided_slice/stack:output:0Lsequential_1/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0Lsequential_1/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Csequential_1/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Esequential_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Esequential_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential_1/text_vectorization_1/StringSplit/strided_slice_1StridedSliceCsequential_1/text_vectorization_1/StringSplit/StringSplitV2:shape:0Lsequential_1/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Nsequential_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Nsequential_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
dsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDsequential_1/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
fsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFsequential_1/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
nsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapehsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
nsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
msequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdwsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0wsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
rsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0{sequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
msequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
lsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ysequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
nsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
lsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2usequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
lsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
psequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
qsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounthsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ysequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
ksequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
fsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumxsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0tsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
osequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
ksequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
fsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tsequential_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Usequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2bsequential_1_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleDsequential_1/text_vectorization_1/StringSplit/StringSplitV2:values:0csequential_1_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
7sequential_1/text_vectorization_1/string_lookup_1/EqualEqualDsequential_1/text_vectorization_1/StringSplit/StringSplitV2:values:09sequential_1_text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
:sequential_1/text_vectorization_1/string_lookup_1/SelectV2SelectV2;sequential_1/text_vectorization_1/string_lookup_1/Equal:z:0<sequential_1_text_vectorization_1_string_lookup_1_selectv2_t^sequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
:sequential_1/text_vectorization_1/string_lookup_1/IdentityIdentityCsequential_1/text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:??????????
>sequential_1/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
6sequential_1/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
Esequential_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?sequential_1/text_vectorization_1/RaggedToTensor/Const:output:0Csequential_1/text_vectorization_1/string_lookup_1/Identity:output:0Gsequential_1/text_vectorization_1/RaggedToTensor/default_value:output:0Fsequential_1/text_vectorization_1/StringSplit/strided_slice_1:output:0Dsequential_1/text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'sequential_1/embedding/embedding_lookupResourceGather,sequential_1_embedding_embedding_lookup_6192Nsequential_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*?
_class5
31loc:@sequential_1/embedding/embedding_lookup/6192*-
_output_shapes
:???????????*
dtype0?
0sequential_1/embedding/embedding_lookup/IdentityIdentity0sequential_1/embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@sequential_1/embedding/embedding_lookup/6192*-
_output_shapes
:????????????
2sequential_1/embedding/embedding_lookup/Identity_1Identity9sequential_1/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
>sequential_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
,sequential_1/global_average_pooling1d_1/MeanMean;sequential_1/embedding/embedding_lookup/Identity_1:output:0Gsequential_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_1/dense_4/MatMulMatMul5sequential_1/global_average_pooling1d_1/Mean:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_1/dense_5/MatMulMatMul'sequential_1/dense_4/Relu:activations:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
sequential_1/dense_6/MatMulMatMul'sequential_1/dense_5/Relu:activations:02sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_1/dense_6/BiasAddBiasAdd%sequential_1/dense_6/MatMul:product:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? z
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
*sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential_1/dense_7/MatMulMatMul'sequential_1/dense_6/Relu:activations:02sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd%sequential_1/dense_7/MatMul:product:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_1/dense_7/SoftmaxSoftmax%sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&sequential_1/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp+^sequential_1/dense_6/MatMul/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp+^sequential_1/dense_7/MatMul/ReadVariableOp(^sequential_1/embedding/embedding_lookupV^sequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2X
*sequential_1/dense_6/MatMul/ReadVariableOp*sequential_1/dense_6/MatMul/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2X
*sequential_1/dense_7/MatMul/ReadVariableOp*sequential_1/dense_7/MatMul/ReadVariableOp2R
'sequential_1/embedding/embedding_lookup'sequential_1/embedding/embedding_lookup2?
Usequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Usequential_1/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?	
F__inference_sequential_1_layer_call_and_return_conditional_losses_6932

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	3
embedding_embedding_lookup_6896:
?N?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2\
 text_vectorization_1/StringLowerStringLowerinputs*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_6896Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/6896*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/6896*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? `
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_6845

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?@
	unknown_7:@
	unknown_8:@ 
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_6565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?t
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6379

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	"
embedding_6306:
?N? 
dense_4_6322:
??
dense_4_6324:	?
dense_5_6339:	?@
dense_5_6341:@
dense_6_6356:@ 
dense_6_6358: 
dense_7_6373: 
dense_7_6375:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2\
 text_vectorization_1/StringLowerStringLowerinputs*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_6306*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6305?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_6322dense_4_6324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_6321?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_6339dense_5_6341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_6338?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_6356dense_6_6358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_6355?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_6373dense_7_6375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_6372w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_6338

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
U
9__inference_global_average_pooling1d_1_layer_call_fn_7073

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
 __inference__traced_restore_7498
file_prefix9
%assignvariableop_embedding_embeddings:
?N?5
!assignvariableop_1_dense_4_kernel:
??.
assignvariableop_2_dense_4_bias:	?4
!assignvariableop_3_dense_5_kernel:	?@-
assignvariableop_4_dense_5_bias:@3
!assignvariableop_5_dense_6_kernel:@ -
assignvariableop_6_dense_6_bias: 3
!assignvariableop_7_dense_7_kernel: -
assignvariableop_8_dense_7_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: C
/assignvariableop_18_adam_embedding_embeddings_m:
?N?=
)assignvariableop_19_adam_dense_4_kernel_m:
??6
'assignvariableop_20_adam_dense_4_bias_m:	?<
)assignvariableop_21_adam_dense_5_kernel_m:	?@5
'assignvariableop_22_adam_dense_5_bias_m:@;
)assignvariableop_23_adam_dense_6_kernel_m:@ 5
'assignvariableop_24_adam_dense_6_bias_m: ;
)assignvariableop_25_adam_dense_7_kernel_m: 5
'assignvariableop_26_adam_dense_7_bias_m:C
/assignvariableop_27_adam_embedding_embeddings_v:
?N?=
)assignvariableop_28_adam_dense_4_kernel_v:
??6
'assignvariableop_29_adam_dense_4_bias_v:	?<
)assignvariableop_30_adam_dense_5_kernel_v:	?@5
'assignvariableop_31_adam_dense_5_bias_v:@;
)assignvariableop_32_adam_dense_6_kernel_v:@ 5
'assignvariableop_33_adam_dense_6_bias_v: ;
)assignvariableop_34_adam_dense_7_kernel_v: 5
'assignvariableop_35_adam_dense_7_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_5_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_5_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_6_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_6_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_7_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_7_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:14RestoreV2:tensors:15*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_embedding_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_7_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_adam_embedding_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_4_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_4_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_5_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_5_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_6_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_6_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_7_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_7_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?t
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6701
text_vectorization_1_inputY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	"
embedding_6676:
?N? 
dense_4_6680:
??
dense_4_6682:	?
dense_5_6685:	?@
dense_5_6687:@
dense_6_6690:@ 
dense_6_6692: 
dense_7_6695: 
dense_7_6697:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2p
 text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_6676*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6305?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_6680dense_4_6682*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_6321?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_6685dense_5_6687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_6338?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_6690dense_6_6692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_6355?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_6695dense_7_6697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_6372w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_5_layer_call_fn_7108

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_6338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?t
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6565

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	"
embedding_6540:
?N? 
dense_4_6544:
??
dense_4_6546:	?
dense_5_6549:	?@
dense_5_6551:@
dense_6_6554:@ 
dense_6_6556: 
dense_7_6559: 
dense_7_6561:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2\
 text_vectorization_1/StringLowerStringLowerinputs*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_6540*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6305?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_6544dense_4_6546*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_6321?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_6549dense_5_6551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_6338?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_6554dense_6_6556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_6355?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_6559dense_7_6561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_6372w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
A__inference_dense_5_layer_call_and_return_conditional_losses_7119

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_1_layer_call_fn_6814

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?@
	unknown_7:@
	unknown_8:@ 
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_6379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?D
?
__inference_adapt_step_3868
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
StaticRegexReplace_1StaticRegexReplaceStaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace_1:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
__inference_save_fn_7211
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
+
__inference__destroyer_7177
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
A__inference_dense_7_layer_call_and_return_conditional_losses_6372

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?t
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6777
text_vectorization_1_inputY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	"
embedding_6752:
?N? 
dense_4_6756:
??
dense_4_6758:	?
dense_5_6761:	?@
dense_5_6763:@
dense_6_6766:@ 
dense_6_6768: 
dense_7_6771: 
dense_7_6773:
identity??dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2p
 text_vectorization_1/StringLowerStringLowertext_vectorization_1_input*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_6752*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6305?
*global_average_pooling1d_1/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238?
dense_4/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0dense_4_6756dense_4_6758*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_6321?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_6761dense_5_6763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_6338?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_6766dense_6_6768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_6355?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_6771dense_7_6773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_6372w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_6305

inputs	)
embedding_lookup_6299:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_6299inputs*
Tindices0	*(
_class
loc:@embedding_lookup/6299*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/6299*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
F__inference_sequential_1_layer_call_and_return_conditional_losses_7019

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	3
embedding_embedding_lookup_6983:
?N?:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@ 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?embedding/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2\
 text_vectorization_1/StringLowerStringLowerinputs*#
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*#
_output_shapes
:?????????*
pattern<br />*
rewrite ?
)text_vectorization_1/StaticRegexReplace_1StaticRegexReplace0text_vectorization_1/StaticRegexReplace:output:0*#
_output_shapes
:?????????*A
pattern64[!"\#\$%\&'\(\)\*\+,\-\./:;<=>\?@\[\\\]\^_`\{\|\}\~]*
rewrite g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV22text_vectorization_1/StaticRegexReplace_1:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????,      ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_6983Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/6983*-
_output_shapes
:???????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/6983*-
_output_shapes
:????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_4/MatMulMatMul(global_average_pooling1d_1/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? `
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^embedding/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_6_layer_call_fn_7128

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_6355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
A__inference_dense_4_layer_call_and_return_conditional_losses_7099

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
(__inference_embedding_layer_call_fn_7059

inputs	
unknown:
?N?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_6305u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_6_layer_call_and_return_conditional_losses_7139

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
p
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_6238

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
&__inference_dense_4_layer_call_fn_7088

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_6321p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?O
?
__inference__traced_save_7377
file_prefix3
/savev2_embedding_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?N?:
??:?:	?@:@:@ : : :: : : : : ::: : : : :
?N?:
??:?:	?@:@:@ : : ::
?N?:
??:?:	?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?N?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?N?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::&"
 
_output_shapes
:
?N?:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:%!!

_output_shapes
:	?@: "

_output_shapes
:@:$# 

_output_shapes

:@ : $

_output_shapes
: :$% 

_output_shapes

: : &

_output_shapes
::'

_output_shapes
: 
?
-
__inference__initializer_7187
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
E
__inference__creator_7182
identity: ??MutableHashTable~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_402*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?

?
A__inference_dense_4_layer_call_and_return_conditional_losses_6321

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_7219
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
p
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_7079

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
&__inference_dense_7_layer_call_fn_7148

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_6372o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_7052
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?@
	unknown_7:@
	unknown_8:@ 
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_6228o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_72276
2key_value_init598_lookuptableimportv2_table_handle.
*key_value_init598_lookuptableimportv2_keys0
,key_value_init598_lookuptableimportv2_values	
identity??%key_value_init598/LookupTableImportV2?
%key_value_init598/LookupTableImportV2LookupTableImportV22key_value_init598_lookuptableimportv2_table_handle*key_value_init598_lookuptableimportv2_keys,key_value_init598_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init598/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?<:?<2N
%key_value_init598/LookupTableImportV2%key_value_init598/LookupTableImportV2:!

_output_shapes	
:?<:!

_output_shapes	
:?<
?
)
__inference_<lambda>_7232
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
+__inference_sequential_1_layer_call_fn_6408
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?@
	unknown_7:@
	unknown_8:@ 
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_6379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
A__inference_dense_6_layer_call_and_return_conditional_losses_6355

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference__initializer_71726
2key_value_init598_lookuptableimportv2_table_handle.
*key_value_init598_lookuptableimportv2_keys0
,key_value_init598_lookuptableimportv2_values	
identity??%key_value_init598/LookupTableImportV2?
%key_value_init598/LookupTableImportV2LookupTableImportV22key_value_init598_lookuptableimportv2_table_handle*key_value_init598_lookuptableimportv2_keys,key_value_init598_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init598/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?<:?<2N
%key_value_init598/LookupTableImportV2%key_value_init598/LookupTableImportV2:!

_output_shapes	
:?<:!

_output_shapes	
:?<
?
?
+__inference_sequential_1_layer_call_fn_6625
text_vectorization_1_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?N?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?@
	unknown_7:@
	unknown_8:@ 
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_6565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_1_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_7068

inputs	)
embedding_lookup_7062:
?N?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_7062inputs*
Tindices0	*(
_class
loc:@embedding_lookup/7062*-
_output_shapes
:???????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/7062*-
_output_shapes
:????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????y
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:???????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_dense_7_layer_call_and_return_conditional_losses_7159

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
9
__inference__creator_7164
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name599*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
+
__inference__destroyer_7192
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
text_vectorization_1_input?
,serving_default_text_vectorization_1_input:0?????????=
dense_72
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
?

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
?

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem!m?"m?)m?*m?1m?2m?9m?:m?v?!v?"v?)v?*v?1v?2v?9v?:v?"
	optimizer
_
1
!2
"3
)4
*5
16
27
98
:9"
trackable_list_wrapper
_
0
!1
"2
)3
*4
15
26
97
:8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_sequential_1_layer_call_fn_6408
+__inference_sequential_1_layer_call_fn_6814
+__inference_sequential_1_layer_call_fn_6845
+__inference_sequential_1_layer_call_fn_6625?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6932
F__inference_sequential_1_layer_call_and_return_conditional_losses_7019
F__inference_sequential_1_layer_call_and_return_conditional_losses_6701
F__inference_sequential_1_layer_call_and_return_conditional_losses_6777?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_6228text_vectorization_1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Kserving_default"
signature_map
L
Llookup_table
Mtoken_counts
N	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_3868?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
(:&
?N?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_embedding_layer_call_fn_7059?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_embedding_layer_call_and_return_conditional_losses_7068?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
?2?
9__inference_global_average_pooling1d_1_layer_call_fn_7073?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_7079?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
": 
??2dense_4/kernel
:?2dense_4/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_dense_4_layer_call_fn_7088?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_4_layer_call_and_return_conditional_losses_7099?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:	?@2dense_5/kernel
:@2dense_5/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_dense_5_layer_call_fn_7108?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_5_layer_call_and_return_conditional_losses_7119?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :@ 2dense_6/kernel
: 2dense_6/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_dense_6_layer_call_fn_7128?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_6_layer_call_and_return_conditional_losses_7139?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 : 2dense_7/kernel
:2dense_7/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_dense_7_layer_call_fn_7148?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_7_layer_call_and_return_conditional_losses_7159?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
"__inference_signature_wrapper_7052text_vectorization_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
o_initializer
p_create_resource
q_initialize
r_destroy_resourceR jCustom.StaticHashTable
Q
s_create_resource
t_initialize
u_destroy_resourceR Z
table??
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	vtotal
	wcount
x	variables
y	keras_api"
_tf_keras_metric
^
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_7164?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_7172?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_7177?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_7182?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_7187?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_7192?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
z0
{1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
-:+
?N?2Adam/embedding/embeddings/m
':%
??2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
&:$	?@2Adam/dense_5/kernel/m
:@2Adam/dense_5/bias/m
%:#@ 2Adam/dense_6/kernel/m
: 2Adam/dense_6/bias/m
%:# 2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
-:+
?N?2Adam/embedding/embeddings/v
':%
??2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
&:$	?@2Adam/dense_5/kernel/v
:@2Adam/dense_5/bias/v
%:#@ 2Adam/dense_6/kernel/v
: 2Adam/dense_6/bias/v
%:# 2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
?B?
__inference_save_fn_7211checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_7219restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_55
__inference__creator_7164?

? 
? "? 5
__inference__creator_7182?

? 
? "? 7
__inference__destroyer_7177?

? 
? "? 7
__inference__destroyer_7192?

? 
? "? @
__inference__initializer_7172L???

? 
? "? 9
__inference__initializer_7187?

? 
? "? ?
__inference__wrapped_model_6228?L???!")*129:??<
5?2
0?-
text_vectorization_1_input?????????
? "1?.
,
dense_7!?
dense_7?????????i
__inference_adapt_step_3868JM???<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
A__inference_dense_4_layer_call_and_return_conditional_losses_7099^!"0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_4_layer_call_fn_7088Q!"0?-
&?#
!?
inputs??????????
? "????????????
A__inference_dense_5_layer_call_and_return_conditional_losses_7119])*0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? z
&__inference_dense_5_layer_call_fn_7108P)*0?-
&?#
!?
inputs??????????
? "??????????@?
A__inference_dense_6_layer_call_and_return_conditional_losses_7139\12/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? y
&__inference_dense_6_layer_call_fn_7128O12/?,
%?"
 ?
inputs?????????@
? "?????????? ?
A__inference_dense_7_layer_call_and_return_conditional_losses_7159\9:/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? y
&__inference_dense_7_layer_call_fn_7148O9:/?,
%?"
 ?
inputs????????? 
? "???????????
C__inference_embedding_layer_call_and_return_conditional_losses_7068b0?-
&?#
!?
inputs??????????	
? "+?(
!?
0???????????
? ?
(__inference_embedding_layer_call_fn_7059U0?-
&?#
!?
inputs??????????	
? "?????????????
T__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_7079{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
9__inference_global_average_pooling1d_1_layer_call_fn_7073nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????x
__inference_restore_fn_7219YMK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_7211?M&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6701?L???!")*129:G?D
=?:
0?-
text_vectorization_1_input?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6777?L???!")*129:G?D
=?:
0?-
text_vectorization_1_input?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_6932nL???!")*129:3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_7019nL???!")*129:3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_1_layer_call_fn_6408uL???!")*129:G?D
=?:
0?-
text_vectorization_1_input?????????
p 

 
? "???????????
+__inference_sequential_1_layer_call_fn_6625uL???!")*129:G?D
=?:
0?-
text_vectorization_1_input?????????
p

 
? "???????????
+__inference_sequential_1_layer_call_fn_6814aL???!")*129:3?0
)?&
?
inputs?????????
p 

 
? "???????????
+__inference_sequential_1_layer_call_fn_6845aL???!")*129:3?0
)?&
?
inputs?????????
p

 
? "???????????
"__inference_signature_wrapper_7052?L???!")*129:]?Z
? 
S?P
N
text_vectorization_1_input0?-
text_vectorization_1_input?????????"1?.
,
dense_7!?
dense_7?????????