contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    stor0[address(this.address)][address(msg.sender)] = 1
    return code.data[65 len 1788]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
address stor3;
uint256 stor3;

function _fallback() {
    emit 0x358d9816: address(this.address), Array(len=calldata.size, data=call.data[0 len calldata.size])
}

function sub_afef5d33(?) {
    stor2[address(msg.sender)][arg1[all]] = 1
    emit 0xcc73cb56: msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
}

function sub_8428b1aa(?) {
    if 1 == bool(stor0[address(this.address)][address(msg.sender)]):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
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

function sub_ec2c07e8(?) {
    mem[ceil32(arg2.length) + 148] = address(arg1)
    mem[ceil32(arg2.length) + 168 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + 168] = arg3
    mem[ceil32(arg2.length) + 256] = arg6
    signer = erecover(sha3(msg.sender, arg1, arg2[all], arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    emit 0x7b34a6d4: arg4 << 248, arg5, arg6
    emit 0x4bd86eda: address(signer), sha3(msg.sender, arg1, arg2[all], arg3)
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 192] = 64
    mem[ceil32(arg2.length) + 224] = arg2.length
    mem[ceil32(arg2.length) + 256 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        emit 0x358d9816: mem[ceil32(arg2.length) + 160 len arg2.length + 8], arg3, mem[ceil32(arg2.length) + arg2.length + 200 len 56]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 256] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32]
        emit 0x358d9816: mem[ceil32(arg2.length) + 160 len arg2.length + 8], arg3, mem[ceil32(arg2.length) + arg2.length + 200 len -(arg2.length % 32) + 88]
    if bool(stor0[address(msg.sender)][address(signer)]) != 1:
        return 0
    stor1[address(msg.sender)][arg3] = 1
    return 1
}



}
