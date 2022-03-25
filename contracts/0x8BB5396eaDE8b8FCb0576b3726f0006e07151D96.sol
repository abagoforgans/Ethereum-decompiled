contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    stor0[address(this.address)][address(msg.sender)] = 1
    return code.data[65 len 2618]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
address stor3;
uint256 stor3;

function sub_31651971(?) {
    return bool(stor2[address(arg1)][arg2[all]])
}

function _fallback() payable {
    revert 
}

function removeKey(address arg1) {
    stor0[address(msg.sender)][address(arg1)] = 0
    emit 0x8681f043: msg.sender, arg1
}

function sub_791e0076(?) {
    emit 0xdef821cc: msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg3
}

function sub_afef5d33(?) {
    stor2[address(msg.sender)][arg1[all]] = 1
    emit 0xcc73cb56: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_8428b1aa(?) {
    if 1 == bool(stor0[address(this.address)][address(msg.sender)]):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function sub_871fc606(?) {
    stor0[address(msg.sender)][address(arg1)] = 1
    emit 0x931288ed: msg.sender, address(arg1), Array(len=arg2.length, data=arg2[all])
}

function addAdmin(address arg1) {
    if bool(stor0[address(this.address)][address(msg.sender)]) != 1:
        return 0
    stor0[address(this.address)][address(arg1)] = 1
    return 1
}

function sub_ec2c07e8(?) {
    signer = erecover(sha3(msg.sender, arg1, arg2[all], arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    if bool(stor0[address(msg.sender)][address(signer)]) != 1:
        return 0
    stor1[address(msg.sender)][arg3] = 1
    return 1
}

function sub_212b5157(?) {
    require ext_code.size(address(stor3))
    call address(stor3).clone() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    emit 0x5825cb90: ext_call.return_data[12 len 20]
    stor0[address(ext_call.return_data[0])][address(msg.sender)] = 1
    emit 0x931288ed: address(ext_call.return_data[0]), msg.sender, 96, 0
    return address(ext_call.return_data[0])
}



}
