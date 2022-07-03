contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
mapping of uint8 stor7;
mapping of uint256 nonce;

function supply() payable {
    return totalSupply
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function version() payable {
    return version[0 len version.length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getNonce() payable {
    return nonce[address(msg.sender)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f64a837e(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not arg1:
        revert with 0, 'Invalid sender address.'
    if not arg2:
        revert with 0, 'Invalid destination address.'
    if arg3 <= 0:
        revert with 0, 
                    32,
                    44,
                    0x2e416d6f756e74206f6620746f6b656e2073656e74206d7573742062652067726561746572207468616e2030,
                    mem[ceil32(arg4.length) + 240 len 20]
    if arg4.length != 65:
        revert with 0, 'Signature's length != 65.'
    _9 = mem[128]
    _10 = mem[160]
    _11 = mem[192]
    mem[ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg4.length) + 180] = address(arg2)
    mem[ceil32(arg4.length) + 200] = arg3
    mem[ceil32(arg4.length) + 232] = address(this.address)
    mem[ceil32(arg4.length) + 252] = nonce[address(arg1)]
    mem[ceil32(arg4.length) + 128] = 124
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11')), 0) - 256) + 27 << 248, _9, _10) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    35,
                    0xfe5369676e617475726520646f65736e2774206d61746368207468652073656e646572,
                    Mask(200, 0, _10),
                    mem[ceil32(arg4.length) + 536 len 4]
    if stor7[address(arg1)][sha3(arg1, arg2, arg3, this.address, stor8[address(arg1)])]:
        revert with 0, 
                    32,
                    38,
                    0x295472616e73616374696f6e2068617320616c7265616479206265656e206578656375746564,
                    mem[ceil32(arg4.length) + 670 len 26]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    stor7[address(arg1)][sha3(arg1, arg2, arg3, this.address, stor8[address(arg1)])] = 1
    nonce[address(arg1)]++
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 1)
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 128 len 46] = 0x2e72656365697665417070726f76616c28616464726573732c75696e743235362c616464726573732c6279746573
    mem[ceil32(arg3.length) + 164] = msg.sender
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 228] = this.address
    mem[ceil32(arg3.length) + 260] = 128
    mem[ceil32(arg3.length) + 292] = arg3.length
    mem[ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + 128] = arg3.length + 164
        mem[64] = arg3.length + ceil32(arg3.length) + 324
        mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg3.length) + 160 len 4] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), Mask(8 * -arg3.length + ceil32(arg3.length) + 14, 0, 0x2e72656365697665417070726f76616c28616464726573732c75696e743235362c616464726573732c6279746573))) >> 224
        _44 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324])
        call arg1.mem[arg3.length + ceil32(arg3.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[arg3.length + ceil32(arg3.length) + 328 len _44 - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
        mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 196
        mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 356
        mem[ceil32(arg3.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg3.length) + 160 len 4] = Mask(32, 224, sha3(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), Mask(8 * -arg3.length + ceil32(arg3.length) + 14, 0, 0x2e72656365697665417070726f76616c28616464726573732c75696e743235362c616464726573732c6279746573))) >> 224
        _49 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356])
        call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 356 len 4] with:
             gas gas_remaining wei
            args mem[floor32(arg3.length) + ceil32(arg3.length) + 360 len _49 - 4]
    require ext_call.success
    return 1
}



}
