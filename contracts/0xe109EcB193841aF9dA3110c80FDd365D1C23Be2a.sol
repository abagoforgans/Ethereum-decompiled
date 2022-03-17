contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1586]




// =====================  Runtime code  =====================


const getDefaultPayment = 10^18

const getDefaultFee = 10^17

const getMinimumCallCost = callcode.return_data[0]

const getMinimumCallGas = callcode.return_data[0]

const getCallWindowSize = callcode.return_data[0]

const getMinimumGracePeriod = callcode.return_data[0]


function _fallback() payable {
  stop
}

function isKnownCall(address arg1) payable {
    codecall 0x873fd7d0657079da141d5705989d10ca555ba990.0xed5bd7ea with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getMinimumCallCost(uint256 arg1) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x96cff3df with:
         gas gas_remaining - 50 wei
        args arg1, 10^17
    require callcode.return_code
    return callcode.return_data[0]
}

function getNextCall(uint256 arg1) payable {
    codecall 0x873fd7d0657079da141d5705989d10ca555ba990.0xe6ce3a6a with:
         gas gas_remaining - 50 wei
        args 0, '>=', arg1
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function getNextCallSibling(address arg1) payable {
    codecall 0x873fd7d0657079da141d5705989d10ca555ba990.0xc4144b26 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function getMinimumCallCost(uint256 arg1, uint256 arg2) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x96cff3df with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require callcode.return_code
    return callcode.return_data[0]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x41075e8d with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, 0, 255, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x41075e8d with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, 255, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x41075e8d with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, 10^18, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5, uint256 arg6) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x41075e8d with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, arg6, 10^17, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function scheduleCall(address arg1, bytes4 arg2, uint256 arg3, uint256 arg4, uint8 arg5, uint256 arg6, uint256 arg7) payable {
    codecall 0xac0500b26e61a8b26700289d9cd326adbc17be0e.0x41075e8d with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, address(arg1), arg2, arg3, arg4, arg5 << 248, arg6, arg7, msg.value
    require callcode.return_code
    return callcode.return_data[12 len 20]
}



}
