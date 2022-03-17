contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 80
    stor0 = 80
    stor1 = 256
    return code.data[34 len 4675]
}



// =====================  Runtime code  =====================


const getDefaultPayment = 10^18

const isInPool = callcode.return_data[0]

const getDefaultFee = 10^17

const getMinimumBond = callcode.return_data[0]

const canExitPool = callcode.return_data[0]

const getCallWindowSize = callcode.return_data[0]

const getNextGenerationId = callcode.return_data[0]

const getCurrentGenerationId = callcode.return_data[0]

const getMinimumGracePeriod = callcode.return_data[0]

const canEnterPool = callcode.return_data[0]


uint256 poolRotationDelay;
uint256 poolOverlapSize;
uint256 poolFreezePeriod;
mapping of struct generationEndAt;
mapping of uint256 bondBalance;

function getGenerationEndAt(uint256 arg1) payable {
    return generationEndAt[arg1].field_512
}

function getBondBalance(address arg1) payable {
    return bondBalance[address(arg1)]
}

function getBondBalance() payable {
    return bondBalance[address(msg.sender)]
}

function getPoolFreezePeriod() payable {
    return poolFreezePeriod
}

function getGenerationSize(uint256 arg1) payable {
    return generationEndAt[arg1].field_768
}

function getPoolOverlapSize() payable {
    return poolOverlapSize
}

function getPoolRotationDelay() payable {
    return poolRotationDelay
}

function getGenerationStartAt(uint256 arg1) payable {
    return generationEndAt[arg1].field_256
}

function _fallback() payable {
  stop
}

function depositBond() payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x68e3ef1 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender, msg.value
    require callcode.return_code
}

function isInPool(address arg1) payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x67f146ce with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function execute(address arg1) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x21df594c with:
         gas gas_remaining - 50 wei
        args 0, 0, gas_remaining, address(arg1), msg.sender
    require callcode.return_code
}

function isKnownCall(address arg1) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0xd17b9e10 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function canExitPool(address arg1) payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x968f7720 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getGenerationIdForCall(address arg1) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x62352f33 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNextCall(uint256 arg1) payable {
    codecall 0x661d36b10dd5b879e496edaf860327812fb81e48.0xe6ce3a6a with:
         gas gas_remaining - 50 wei
        args 10, '>=', arg1
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function isInGeneration(uint256 arg1) payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0xa163a325 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNextCallSibling(address arg1) payable {
    codecall 0x661d36b10dd5b879e496edaf860327812fb81e48.0xc4144b26 with:
         gas gas_remaining - 50 wei
        args 10, arg1
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function isInGeneration(address arg1, uint256 arg2) payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0xa163a325 with:
         gas gas_remaining - 50 wei
        args 0, address(arg1), arg2
    require callcode.return_code
    return callcode.return_data[0]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7365bb9a with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, 0, 255, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function exitPool() payable {
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x317c152d with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0xf1173928 with:
         gas gas_remaining - 50 wei
        args msg.sender, callcode.return_data[0]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7365bb9a with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, 255, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function withdrawBond(uint256 arg1) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x23306ed6 with:
         gas gas_remaining - 50 wei
        args 
    require callcode.return_code
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0xdd8abb6c with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, arg1, callcode.return_data[0]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7365bb9a with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5, uint256 arg6) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7365bb9a with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, arg6, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function canEnterPool(address arg1) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x23306ed6 with:
         gas gas_remaining - 50 wei
        args 
    require callcode.return_code
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x54e37911 with:
         gas gas_remaining - 50 wei
        args 0, address(arg1), callcode.return_data[0]
    return callcode.return_data[0]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5, uint256 arg6, uint256 arg7) payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7365bb9a with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, arg6, arg7, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function enterPool() payable {
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x23306ed6 with:
         gas gas_remaining - 50 wei
        args 
    require callcode.return_code
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x5748147e with:
         gas gas_remaining - 50 wei
        args 0, msg.sender, callcode.return_data[0]
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.'jpM{' with:
         gas gas_remaining - 50 wei
        args msg.sender, callcode.return_data[0]
}

function getGenerationForCall(address arg1) payable {
    call arg1.targetBlock() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call arg1.gracePeriod() with:
         gas gas_remaining - 25050 wei
    call arg1.targetBlock() with:
         gas gas_remaining - 25050 wei
    codecall 0x2b8f80bd9fe08f7a13cf5919ee20524cb4a75858.0x38f4c9eb with:
         gas gas_remaining - 50 wei
        args 0, ext_call.return_data[0], ext_call.return_data[0] + uint8(ext_call.return_data[0])
    require callcode.return_code
    return callcode.return_data[0]
}

function getDesignatedCaller(address arg1, uint256 arg2) payable {
    call arg1.targetBlock() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call arg1.gracePeriod() with:
         gas gas_remaining - 25050 wei
    call arg1.targetBlock() with:
         gas gas_remaining - 25050 wei
    codecall 0x873bf63c898791e57fa66e7b9261ea81df0b8044.0x7da85730 with:
         gas gas_remaining - 50 wei
        args 0, 0, ext_call.return_data[0], ext_call.return_data[0] + uint8(ext_call.return_data[0]), arg2
    require callcode.return_code
    return callcode.return_data[0], address(callcode.return_data[32])
}



}
