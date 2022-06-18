contract main {




// =====================  Runtime code  =====================


#
#  - sub_88671ad4(?)
#
const decimals = 18

const PRECISION = 10^18


uint256 m_required;
uint256 m_numOwners;

function m_numOwners() {
    return m_numOwners
}

function m_required() {
    return m_required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function bytesToBytes32(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_86435354(?) {
    if not arg4:
        signer = erecover(arg1, arg4 + 27 << 248, arg2, arg3) 
    else:
        if arg4 != 1:
            signer = erecover(arg1, arg4 << 248, arg2, arg3) 
        else:
            signer = erecover(arg1, arg4 + 27 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function ecrecoverDecode(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes1 arg4) {
    if not uint8(arg4):
        signer = erecover(arg1, uint8(arg4) + 27 << 248, arg2, arg3) 
    else:
        if uint8(arg4) != 1:
            signer = erecover(arg1, arg4 << 248, arg2, arg3) 
        else:
            signer = erecover(arg1, uint8(arg4) + 27 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
