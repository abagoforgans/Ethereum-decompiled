contract main {




// =====================  Runtime code  =====================


#
#  - sub_ca26a1ed(?)
#  - sub_ff750a26(?)
#
const name = 'SAND'

const decimals = 18

const symbol = 'SAND'


mapping of uint8 stor0;
mapping of uint256 sub_0327f06c;
mapping of uint8 stor2;
uint16 stor3;
uint256 stor3; offset 16
uint256 stor3;
mapping of uint8 stor4;
address adminAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_0327f06c(?) {
    require calldata.size - 4 >= 32
    return sub_0327f06c[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function isSuperOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_66f71c4f(?) {
    require calldata.size - 4 >= 64
    return bool(stor2[address(arg1)][arg2])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_c8bddcb5(?) {
    require calldata.size - 4 >= 32
    stor2[msg.sender][arg1] = 1
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin can change admin'
    emit AdminChanged(adminAddress, arg1);
    adminAddress = arg1
}

function init712() {
    if not stor0['712']:
        stor0 = 1
        uint256(stor3.field_0) = sha3(sha3(0x454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c6164647265737320766572696679696e67436f6e7472616374), sha3('The Sandbox 3D'), sha3('1'), this.address)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Cannot approve with 0x0'
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSuperOperator(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x296f6e6c792061646d696e20697320616c6c6f77656420746f20616464207375706572206f70657261746f72,
                    mem[208 len 20]
    stor4[address(arg1)] = uint8(arg2)
    emit SuperOperator(address(arg1), arg2);
}

function approveFor(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if not stor4[msg.sender]:
            revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x736d73672e73656e64657220213d2066726f6d207c7c2073757065724f70657261746f,
                        mem[199 len 29]
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    if not arg2:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Cannot send to 0x0'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg2,
              96,
              160,
              0,
              mem[224],
              0,
              mem[288],
              msg.sender,
              msg.sender,
              arg1,
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != msg.sender:
        if not stor4[msg.sender]:
            if arg1 > allowance[address(msg.sender)][msg.sender]:
                revert with 0, 'Not enough funds allowed'
            if allowance[address(msg.sender)][msg.sender] != -1:
                require arg1 <= allowance[address(msg.sender)][msg.sender]
                allowance[address(msg.sender)][msg.sender] -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                arg1,
                96,
                160,
                0,
                mem[224],
                0,
                mem[288],
                msg.sender,
                msg.sender,
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if not stor4[msg.sender]:
            if allowance[address(arg1)][msg.sender] != -1:
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'Not enough funds allowed'
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
    if not arg2:
        revert with 0, 'Cannot send to 0x0'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg3,
              96,
              160,
              0,
              mem[224],
              0,
              mem[288],
              msg.sender,
              arg1,
              arg2,
    return 1
}

function sub_fdcc8d8c(?) {
    require calldata.size - 4 >= 64
    if not stor0['SAND_20']:
        stor0 = 1
        if stor0['712']:
            adminAddress = arg1
            if not totalSupply:
                if not arg2:
                    revert with 0, 'Cannot mint to 0x0'
                require totalSupply + 3000000000 * 10^18 >= totalSupply
                totalSupply += 3000000000 * 10^18
                require balanceOf[address(arg2)] + 3000000000 * 10^18 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += 3000000000 * 10^18
                emit Transfer(3000000000 * 10^18, 0, arg2);
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4):
                            3000000000 * 10^18,
                            64,
                            0,
                            mem[320],
                            msg.sender,
                            arg2,
        else:
            stor0['712'] = 1
            uint256(stor3.field_0) = sha3(sha3(0x454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c6164647265737320766572696679696e67436f6e7472616374), sha3('The Sandbox 3D'), sha3('1'), this.address)
            adminAddress = arg1
            if not totalSupply:
                if not arg2:
                    revert with 0, 'Cannot mint to 0x0'
                require totalSupply + 3000000000 * 10^18 >= totalSupply
                totalSupply += 3000000000 * 10^18
                require balanceOf[address(arg2)] + 3000000000 * 10^18 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += 3000000000 * 10^18
                emit Transfer(3000000000 * 10^18, 0, arg2);
                emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4):
                            3000000000 * 10^18,
                            64,
                            0,
                            mem[480],
                            msg.sender,
                            arg2,
}

function sub_a7624008(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not msg.sender:
        revert with 0, 'Cannot approve with 0x0'
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(msg.sender)][address(arg1)] = -1
    mem[ceil32(arg2.length) + 128] = -1
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
                  msg.sender,
                  arg1,
    if arg2.length < 68:
        revert with 0, 'first param != sender'
    if mem[132] != msg.sender:
        revert with 0, 'first param != sender'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'the call failed'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
               mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
               Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
           Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
           mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}

function sub_83782136(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor2[address(arg1)][arg2]:
        revert with 0, 'message already used or revoked'
    if arg6:
        mem[614 len arg5.length] = arg5[all]
        mem[arg5.length + 614] = 0
        require ext_code.size(arg1)
        staticcall arg1.isValidSignature(bytes arg1, bytes arg2) with:
                gas gas_remaining wei
               args 64, 192, 66, 0, Mask(240, 0, stor3.field_16), uint16(stor3.field_0), sha3(sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), address(arg1), arg2, address(arg3), arg4), 0, 0, Mask(16, -256, uint16(stor3.field_0), sha3(sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), address(arg1), arg2, address(arg3), arg4), 0, 0) << 496, arg5.length, arg5[all], mem[arg5.length + 614 len ceil32(arg5.length) - arg5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
            revert with 0, 'invalid signature'
    else:
        mem[418 len arg5.length] = arg5[all]
        mem[arg5.length + 418] = 0
        require 65 == arg5.length
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) - 256) + 27) != 27:
            require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) - 256) + 27)
        signer = erecover(sha3(0, uint256(stor3.field_0), sha3(sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), address(arg1), arg2, address(arg3), arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 482, 32))), 0) - 256) + 27 << 248, mem[418], mem[450]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer)
        if arg1 != address(signer):
            revert with 0, 'signer != _from'
    stor2[address(arg1)][arg2] = 1
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    if not arg3:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(arg1)][address(arg3)] = arg4
    emit Approval(arg4, arg1, arg3);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not msg.sender:
        revert with 0, 'Cannot approve with 0x0'
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    if arg3.length < 68:
        revert with 0, 'first param != sender'
    if mem[132] != msg.sender:
        revert with 0, 'first param != sender'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'the call failed'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
           Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
           mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}

function sub_54d0a58d(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor2[address(arg1)][arg2]:
        revert with 0, 'message already used or revoked'
    if arg6:
        mem[572 len arg5.length] = arg5[all]
        mem[arg5.length + 572] = 0
        require ext_code.size(arg1)
        staticcall arg1.isValidSignature(bytes arg1, bytes arg2) with:
                gas gas_remaining wei
               args 64, 160, 60, Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), arg1, arg2, arg3, arg4), 0, Mask(224, -256, Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), arg1, arg2, arg3, arg4), 0) << 288, arg5.length, arg5[all], mem[arg5.length + 572 len ceil32(arg5.length) - arg5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x20c13b0b00000000000000000000000000000000000000000000000000000000:
            revert with 0, 'invalid signature'
    else:
        mem[408 len arg5.length] = arg5[all]
        mem[arg5.length + 408] = 0
        require 65 == arg5.length
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) - 256) + 27) != 27:
            require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) - 256) + 27)
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, sha3(0x72417070726f766528616464726573732066726f6d2c75696e74323536206d65737361676549642c61646472657373207461726765742c75696e7432353620616d6f756e74), arg1, arg2, arg3, arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 472, 32))), 0) - 256) + 27 << 248, mem[408], mem[440]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer)
        if arg1 != address(signer):
            revert with 0, 'signer != _from'
    stor2[address(arg1)][arg2] = 1
    if not arg1:
        revert with 0, 'Cannot approve with 0x0'
    if not arg3:
        revert with 0, 'Cannot approve with 0x0'
    allowance[address(arg1)][address(arg3)] = arg4
    emit Approval(arg4, arg1, arg3);
    return 1
}



}
