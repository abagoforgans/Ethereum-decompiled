contract main {




// =====================  Runtime code  =====================


const name = 'Saltyness'

const decimals = 18

const symbol = 'SALT'


address stor0;
uint256 stor0;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function acceptNewOwner() {
    require msg.sender == stor1
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function setNewOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0)
    stor1 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9d121431(?) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470);
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][msg.sender] <= 0:
        revert with 0, 'Not approved'
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'Over spending limit'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Insufficient balance'
    if this.address == arg2:
        revert with 0, 'You can't sell back your tokens'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2, sha3(None));
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    if this.address == arg1:
        revert with 0, 'You can't sell back your tokens'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = 0
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    if this.address == arg1:
        revert with 0, 'You can't sell back your tokens'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 160] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = 96
        mem[ceil32(arg3.length) + 260] = arg3.length
        mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient balance'
    if this.address == arg1:
        revert with 0, 'You can't sell back your tokens'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    mem[0] = arg1
    mem[32] = 2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        _144 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                      mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                      msg.sender,
                      arg1,
                      _144,
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                      mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                      msg.sender,
                      arg1,
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
               mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    if not arg4.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 164] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      msg.sender,
                      arg1,
                      sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]),
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      0,
                      Mask(224, 0, arg2),
                      msg.sender,
                      arg1,
        return 0, 1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg3.length + 132
        mem[64] = arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324
        _153 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len _153])) >> 224
        _267 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324])
        call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len _267 - 4]
        if not return_data.size:
            require ext_call.success
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 324] = 256^(-(arg3.length % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 324] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 324 len arg3.length % 32]));
        else:
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = return_data.size
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg3.length) + 325] = 256^(-(arg3.length % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg3.length) + 325] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg3.length) + 325 len arg3.length % 32]));
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(arg3.length) + 164
        mem[64] = floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356
        _161 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len _161])) >> 224
        _275 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356])
        call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
             gas gas_remaining wei
            args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len _275 - 4]
        if not return_data.size:
            require ext_call.success
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 356] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len arg3.length % 32]));
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = return_data.size
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357] = 256^(-(arg3.length % 32) + 32) - 1 and mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357 len arg3.length % 32]));
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
