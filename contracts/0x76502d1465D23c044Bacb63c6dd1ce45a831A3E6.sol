contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() {
    mem[96 len -19352] = code.data[19749 len -19352]
    mem[64] = -19256
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4 = mem[140 len 20]
    stor2 = mem[172 len 20]
    stor3 = mem[204 len 20]
    stor5 = mem[236 len 20]
    stor6 = mem[268 len 20]
    return code.data[397 len 19352]
}



// =====================  Runtime code  =====================


const TERMS_AND_CONDITIONS = code.data[19277 len 32]


address owner;
array of uint256 VERSION_NUMBER;
address MELON_ASSETAddress;
address nativeAssetAddress;
address GOVERNANCEAddress;
uint8 stor5; offset 160
address CANONICAL_PRICEFEEDAddress;
address COMPLIANCEAddress;
array of address listOfFunds;
mapping of address fundByManager;

function GOVERNANCE() {
    return GOVERNANCEAddress
}

function getFundById(uint256 arg1) {
    require arg1 < listOfFunds.length
    return address(listOfFunds[arg1])
}

function getFundByManager(address arg1) {
    return fundByManager[address(arg1)]
}

function COMPLIANCE() {
    return COMPLIANCEAddress
}

function CANONICAL_PRICEFEED() {
    return CANONICAL_PRICEFEEDAddress
}

function VERSION_NUMBER() {
    return VERSION_NUMBER[0 len VERSION_NUMBER.length]
}

function owner() {
    return owner
}

function MELON_ASSET() {
    return MELON_ASSETAddress
}

function NATIVE_ASSET() {
    return nativeAssetAddress
}

function listOfFunds(uint256 arg1) {
    require arg1 < listOfFunds.length
    return address(listOfFunds[arg1])
}

function getNativeAsset() {
    return nativeAssetAddress
}

function managerToFunds(address arg1) {
    return fundByManager[arg1]
}

function isShutDown() {
    return bool(stor5)
}

function _fallback() payable {
    revert
}

function getLastFundId() {
    return (listOfFunds.length - 1)
}

function shutDown() {
    require GOVERNANCEAddress == msg.sender
    stor5 = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function termsAndConditionsAreSigned(uint8 arg1, bytes32 arg2, bytes32 arg3) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, code.data[19277 len 32]), arg1 << 248, arg2, arg3) 
    require erecover.result
    return (address(signer) == msg.sender)
}

function shutDownFund(address arg1) {
    if not stor5:
        require fundByManager[address(msg.sender)] == arg1
    fundByManager[address(msg.sender)] = 0
    require ext_code.size(arg1)
    call arg1.0x10b9e583 with:
         gas gas_remaining wei
    require ext_call.success
    emit code.data[19245 len 32]: arg1
}

function setupFund(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, address[] arg7, address[] arg8, uint8 arg9, bytes32 arg10, bytes32 arg11) {
    require not stor5
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, code.data[19277 len 32]), arg9 << 248, arg10, arg11) 
    require erecover.result
    require address(signer) == msg.sender
    require ext_code.size(COMPLIANCEAddress)
    call COMPLIANCEAddress.isCompetitionAllowed(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require not fundByManager[address(msg.sender)]
    mem[(32 * arg7.length) + (32 * arg8.length) + 16931 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[(64 * arg7.length) + (32 * arg8.length) + 16931] = 1
    mem[(64 * arg7.length) + (32 * arg8.length) + 16963 len 0] = None
    create contract with 0 wei
                    code: code.data[3082 len 16163], msg.sender, arg1, nativeAssetAddress, 0, 0, COMPLIANCEAddress, address(arg6), CANONICAL_PRICEFEEDAddress, 320, (32 * arg7.length) + 352, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 16931 len (32 * arg7.length) + -floor32(arg7.length) + 64]
    require create.new_address
    listOfFunds.length++
    if not listOfFunds.length <= listOfFunds.length + 1:
        idx = listOfFunds.length + 1
        while listOfFunds.length > idx:
            uint256(listOfFunds[idx]) = 0
            idx = idx + 1
            continue 
    address(listOfFunds[listOfFunds.length]) = address(create.new_address)
    fundByManager[address(msg.sender)] = address(create.new_address)
    emit code.data[19245 len 32]: address(create.new_address)
}



}
