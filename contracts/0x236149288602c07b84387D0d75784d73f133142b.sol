contract main {




// =====================  Runtime code  =====================


const name = '0xchan ICO'

const decimals = 18

const symbol = 'ZCI'

const sub_c90f4999(?) = (430579 * 3600)

const fundingCap = 2000 * 10^18

const IcoStartTime = (429619 * 3600)


address stor0;
uint256 stor0;
address stor1;
address stor2;
mapping of uint256 stor3;
mapping of uint256 beneficiaryShares;
uint256 sub_dd686203;
uint256 sub_25c0ce78;
uint256 sub_c0a8d117;
mapping of uint256 balanceOf;
mapping of uint256 etherSpent;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function sub_25c0ce78(?) {
    return sub_25c0ce78
}

function etherSpent(address arg1) {
    require calldata.size - 4 >= 32
    return etherSpent[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_c0a8d117(?) {
    return sub_c0a8d117
}

function beneficiaryShares(address arg1) {
    require calldata.size - 4 >= 32
    return beneficiaryShares[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_dd686203(?) {
    return sub_dd686203
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

function beneficiaryStash(address arg1) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        return 0
    if stor3[address(arg1)] != -1:
        return ((sub_25c0ce78 * beneficiaryShares[address(arg1)]) - stor3[address(arg1)])
    return (sub_25c0ce78 * beneficiaryShares[address(arg1)])
}

function removeBeneficiary(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    if block.timestamp >= 429619 * 3600:
        revert with 0, 'ICO has started'
    if not stor3[address(arg1)]:
        revert with 0, 'Not a beneficiary'
    stor3[address(arg1)] = 0
    beneficiaryShares[address(arg1)] = 0
    sub_dd686203 -= arg2
}

function addBeneficiary(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    if block.timestamp >= 429619 * 3600:
        revert with 0, 'ICO has started'
    if stor3[address(arg1)]:
        revert with 0, 'Already a beneficiary'
    stor3[address(arg1)] = -1
    beneficiaryShares[address(arg1)] = arg2
    sub_dd686203 += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][msg.sender] <= 0:
        revert with 0, 'Not approved'
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'Over spending limit'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if not sub_c0a8d117:
        if eth.balance(this.address) < 2000 * 10^18:
            if block.timestamp < 430579 * 3600:
                revert with 0, 'ICO hasn't ended'
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
    if not sub_c0a8d117:
        if eth.balance(this.address) < 2000 * 10^18:
            if block.timestamp < 430579 * 3600:
                revert with 0, 'ICO hasn't ended'
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

function withdrawFunding(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_c0a8d117:
        if eth.balance(this.address) < 2000 * 10^18:
            if block.timestamp < 430579 * 3600:
                revert with 0, 'ICO hasn't ended'
        sub_c0a8d117 = eth.balance(this.address)
    if stor3[msg.sender] <= 0:
        revert with 0, 'You're not a beneficiary'
    if not stor3[address(msg.sender)]:
        if arg1 >= 0:
            stor3[msg.sender] = sub_25c0ce78 * beneficiaryShares[msg.sender]
            call msg.sender with:
                 gas 2300 wei
        else:
            if stor3[msg.sender] != -1:
                stor3[msg.sender] += arg1
            else:
                stor3[msg.sender] = arg1
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
    else:
        if stor3[address(msg.sender)] != -1:
            if arg1 >= (sub_25c0ce78 * beneficiaryShares[address(msg.sender)]) - stor3[address(msg.sender)]:
                stor3[msg.sender] = sub_25c0ce78 * beneficiaryShares[msg.sender]
                call msg.sender with:
                   value (sub_25c0ce78 * beneficiaryShares[address(msg.sender)]) - stor3[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
            else:
                if stor3[msg.sender] != -1:
                    stor3[msg.sender] += arg1
                else:
                    stor3[msg.sender] = arg1
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
        else:
            if arg1 >= sub_25c0ce78 * beneficiaryShares[address(msg.sender)]:
                stor3[msg.sender] = sub_25c0ce78 * beneficiaryShares[msg.sender]
                call msg.sender with:
                   value sub_25c0ce78 * beneficiaryShares[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
            else:
                if stor3[msg.sender] != -1:
                    stor3[msg.sender] += arg1
                else:
                    stor3[msg.sender] = arg1
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = 0
    if not sub_c0a8d117:
        if eth.balance(this.address) < 2000 * 10^18:
            if block.timestamp < 430579 * 3600:
                revert with 0, 'ICO hasn't ended'
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

function _fallback() payable {
    if block.timestamp < 429619 * 3600:
        revert with 0, 'ICO hasn't started yet'
    if sub_c0a8d117:
        revert with 0, 'ICO has ended'
    if block.timestamp >= 430579 * 3600:
        revert with 0, 'ICO has ended'
    if not msg.value:
        revert with 0, 'Must be a multiple of 0.0001 ETH'
    if msg.value % 10^14:
        revert with 0, 'Must be a multiple of 0.0001 ETH'
    if eth.balance(this.address) <= 2000 * 10^18:
        s = 0
        s = 0
        idx = eth.balance(this.address) - msg.value
        while idx < eth.balance(this.address):
            if idx < 500 * 10^18:
                if 500 * 10^18 >= eth.balance(this.address):
                    s = eth.balance(this.address) - idx
                    s = s + (10^18 * eth.balance(this.address) - idx / 10^14 / 2)
                    idx = eth.balance(this.address)
                    continue 
                s = -idx + 500 * 10^18
                s = s + (10^18 * -idx + 500 * 10^18 / 10^14 / 2)
                idx = 500 * 10^18
                continue 
            if idx >= 1250 * 10^18:
                s = eth.balance(this.address) - idx
                s = s + (10^18 * eth.balance(this.address) - idx / 10^14 / 10)
                idx = eth.balance(this.address)
                continue 
            if 1250 * 10^18 >= eth.balance(this.address):
                s = eth.balance(this.address) - idx
                s = s + (10^18 * eth.balance(this.address) - idx / 10^14 / 5)
                idx = eth.balance(this.address)
                continue 
            s = -idx + 1250 * 10^18
            s = s + (10^18 * -idx + 1250 * 10^18 / 10^14 / 5)
            idx = 1250 * 10^18
            continue 
        emit onICOBuy(10^18 * msg.value / 10^14, s, msg.sender);
        balanceOf[msg.sender] = s + (10^18 * msg.value / 10^14) + balanceOf[msg.sender]
        totalSupply = s + (10^18 * msg.value / 10^14) + totalSupply
        if stor2:
            require ext_code.size(stor2)
            call stor2.0x589e74be with:
                 gas gas_remaining wei
                args msg.sender, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Transfer((s + (10^18 * msg.value / 10^14)), this.address, msg.sender, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470);
        emit Transfer((s + (10^18 * msg.value / 10^14)), this.address, msg.sender);
        require sub_dd686203
        sub_25c0ce78 = eth.balance(this.address) / sub_dd686203
        etherSpent[msg.sender] += msg.value
        if msg.value != msg.value:
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if not msg.value + -eth.balance(this.address) + 2000 * 10^18:
            revert with 0, 'Funding cap has been reached'
        s = 0
        s = 0
        idx = -msg.value + eth.balance(this.address)
        while idx < 2000 * 10^18:
            if idx < 500 * 10^18:
                s = -idx + 500 * 10^18
                s = s + (10^18 * -idx + 500 * 10^18 / 10^14 / 2)
                idx = 500 * 10^18
                continue 
            if idx >= 1250 * 10^18:
                s = -idx + 2000 * 10^18
                s = s + (10^18 * -idx + 2000 * 10^18 / 10^14 / 10)
                idx = 2000 * 10^18
                continue 
            s = -idx + 1250 * 10^18
            s = s + (10^18 * -idx + 1250 * 10^18 / 10^14 / 5)
            idx = 1250 * 10^18
            continue 
        emit onICOBuy(10^18 * msg.value + -eth.balance(this.address) + 2000 * 10^18 / 10^14, s, msg.sender);
        balanceOf[msg.sender] = s + (10^18 * msg.value + -eth.balance(this.address) + 2000 * 10^18 / 10^14) + balanceOf[msg.sender]
        totalSupply = s + (10^18 * msg.value + -eth.balance(this.address) + 2000 * 10^18 / 10^14) + totalSupply
        if stor2:
            require ext_code.size(stor2)
            call stor2.0x589e74be with:
                 gas gas_remaining wei
                args msg.sender, msg.value + -eth.balance(this.address) + 2000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Transfer((s + (10^18 * msg.value + -eth.balance(this.address) + 2000 * 10^18 / 10^14)), this.address, msg.sender, 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470);
        emit Transfer((s + (10^18 * msg.value + -eth.balance(this.address) + 2000 * 10^18 / 10^14)), this.address, msg.sender);
        require sub_dd686203
        sub_25c0ce78 = 2000 * 10^18 / sub_dd686203
        etherSpent[msg.sender] = msg.value + -eth.balance(this.address) + etherSpent[msg.sender] + 2000 * 10^18
        if msg.value + -eth.balance(this.address) + 2000 * 10^18 != msg.value:
            call msg.sender with:
               value eth.balance(this.address) - 2000 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
    if sub_c0a8d117:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient balance'
        if this.address == arg1:
            revert with 0, 'You can't sell back your tokens'
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        mem[0] = arg1
        mem[32] = 8
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if ext_code.size(arg1) <= 0:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
            _422 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32])
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                          msg.sender,
                          arg1,
                          _422,
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
            _451 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len _451])) >> 224
            _785 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324])
            call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len _785 - 4]
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
            _471 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len _471])) >> 224
            _793 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356])
            call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len _793 - 4]
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
    else:
        if eth.balance(this.address) >= 2000 * 10^18:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient balance'
            if this.address == arg1:
                revert with 0, 'You can't sell back your tokens'
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            mem[0] = arg1
            mem[32] = 8
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if ext_code.size(arg1) <= 0:
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                _432 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
                emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                              Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                              mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                              msg.sender,
                              arg1,
                              _432,
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
                _457 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len _457])) >> 224
                _817 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324])
                call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len _817 - 4]
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
                _477 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len _477])) >> 224
                _825 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356])
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len _825 - 4]
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
        else:
            if block.timestamp < 430579 * 3600:
                revert with 0, 'ICO hasn't ended'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient balance'
            if this.address == arg1:
                revert with 0, 'You can't sell back your tokens'
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            mem[0] = arg1
            mem[32] = 8
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            if ext_code.size(arg1) <= 0:
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
                _442 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32])
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
                emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                              Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                              mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                              msg.sender,
                              arg1,
                              _442,
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
                _463 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len _463])) >> 224
                _849 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 324])
                call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len _849 - 4]
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
                _483 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356] = !(256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1) and mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] or 256^(-(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 356]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len _483])) >> 224
                _857 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 356])
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len _857 - 4]
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
