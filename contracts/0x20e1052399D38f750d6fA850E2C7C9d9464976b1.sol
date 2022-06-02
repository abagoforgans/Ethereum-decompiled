contract main {




// =====================  Runtime code  =====================


const sub_10f75f9c(?) = 0

const getEthBalance = eth.balance(this.address)

const sub_e6a39022(?) = 'SUCCESS'

const SUCCESS_CODE = 0

const SUCCESS_MESSAGE = 'SUCCESS'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint256 stor7; offset 16
uint256 stor7; offset 8
array of struct sub_516aa695;
array of struct sub_d4ced421;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1f66103a(?) {
    return bool(uint8(stor7.field_16))
}

function decimals() {
    return decimals
}

function canPurchase() {
    return bool(uint8(stor7.field_8))
}

function sub_4fcd37e6(?) {
    return bool(uint8(stor7.field_8))
}

function sub_516aa695(?) {
    require arg1 < sub_516aa695.length
    return address(sub_516aa695[arg1].field_0)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isManager() {
    return bool(stor4[address(msg.sender)])
}

function sub_d4ced421(?) {
    require arg1 < sub_d4ced421.length
    return address(sub_d4ced421[arg1].field_0)
}

function sub_d5ff0e7c(?) {
    return bool(uint8(stor7.field_16))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function checkManagerStatus(address arg1) {
    return bool(stor4[address(arg1)])
}

function managers(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function addManager(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function removeManager(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function depositEth() payable {
    if msg.value > 0:
        emit DepositEth(msg.value, msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function purchase(uint256 arg1) payable {
    if not uint8(stor7.field_8):
        revert with 0, 'can't purchase now'
}

function sub_0172f0f2(?) {
    require bool(uint8(stor7.field_8)) != arg1
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
    emit 0x5316235a: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_27fe0dca(?) {
    require bool(uint8(stor7.field_16)) != arg1
    Mask(240, 0, stor7.field_16) = Mask(240, 0, arg1)
    emit 0x2b3e1e39: arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_152f2782(?) {
    require arg1
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        if arg1 != address(sub_516aa695[idx].field_0):
            idx = idx + 1
            continue 
        return idx
    return -1
}

function sub_ade34e17(?) {
    s = 0
    while 0 < sub_d4ced421.length:
        require s < sub_d4ced421.length
        mem[0] = 9
        if arg1 != address(sub_d4ced421[s].field_0):
            s = s + 1
            continue 
        return s
    return -1
}

function withdrawEth(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawEth(arg2, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addAsset(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        if arg1 != address(sub_516aa695[idx].field_0):
            idx = idx + 1
            continue 
        if idx != -1:
            revert with 0, 'the asset exist'
        sub_516aa695.length++
        address(sub_516aa695[sub_516aa695.length].field_0) = arg1
        emit 0xb38e19e0: arg1
    sub_516aa695.length++
    address(sub_516aa695[sub_516aa695.length].field_0) = arg1
    emit 0xb38e19e0: arg1
}

function sub_efc5a11c(?) {
    s = 0
    while 0 < sub_d4ced421.length:
        require s < sub_d4ced421.length
        mem[0] = 9
        if address(sub_d4ced421[s].field_0) != msg.sender:
            s = s + 1
            continue 
        if s == -1:
            revert with 0, 'this address is not in swapList'
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'this address is not in swapList'
}

function sub_cbc505aa(?) {
    require arg1
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        if arg1 != address(sub_516aa695[idx].field_0):
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'the address isn't asset'
        require msg.sender == owner
        emit 0xfecd45d0: arg3, arg1, arg2
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    revert with 0, 'the address isn't asset'
}

function withdrawErc20(address arg1, address arg2, uint256 arg3) {
    require arg1
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        if arg1 != address(sub_516aa695[idx].field_0):
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'the address isn't asset'
        require msg.sender == owner
        emit 0x383f33f5: arg3, arg1, arg2
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    revert with 0, 'the address isn't asset'
}

function sub_28b6d24e(?) {
    if not sub_d4ced421.length:
        mem[(32 * sub_d4ced421.length) + 128] = 32
        mem[(32 * sub_d4ced421.length) + 160] = sub_d4ced421.length
        mem[(32 * sub_d4ced421.length) + 192 len floor32(sub_d4ced421.length)] = mem[128 len floor32(sub_d4ced421.length)]
        return memory
          from (32 * sub_d4ced421.length) + 128
           len (96 * sub_d4ced421.length) + 64
    mem[128] = address(sub_d4ced421.field_0)
    idx = 128
    s = 0
    while (32 * sub_d4ced421.length) + 96 > idx:
        mem[idx + 32] = address(sub_d4ced421[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d4ced421.length) + 192 len floor32(sub_d4ced421.length)] = mem[128 len floor32(sub_d4ced421.length)]
    return Array(len=sub_d4ced421.length, data=mem[128 len floor32(sub_d4ced421.length)], mem[(32 * sub_d4ced421.length) + floor32(sub_d4ced421.length) + 192 len (32 * sub_d4ced421.length) - floor32(sub_d4ced421.length)]), 
}

function sub_a73b870c(?) {
    if not sub_516aa695.length:
        mem[(32 * sub_516aa695.length) + 128] = 32
        mem[(32 * sub_516aa695.length) + 160] = sub_516aa695.length
        mem[(32 * sub_516aa695.length) + 192 len floor32(sub_516aa695.length)] = mem[128 len floor32(sub_516aa695.length)]
        return memory
          from (32 * sub_516aa695.length) + 128
           len (96 * sub_516aa695.length) + 64
    mem[128] = address(sub_516aa695.field_0)
    idx = 128
    s = 0
    while (32 * sub_516aa695.length) + 96 > idx:
        mem[idx + 32] = address(sub_516aa695[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_516aa695.length) + 192 len floor32(sub_516aa695.length)] = mem[128 len floor32(sub_516aa695.length)]
    return Array(len=sub_516aa695.length, data=mem[128 len floor32(sub_516aa695.length)], mem[(32 * sub_516aa695.length) + floor32(sub_516aa695.length) + 192 len (32 * sub_516aa695.length) - floor32(sub_516aa695.length)]), 
}

function sub_0cfef264(?) {
    s = 0
    while 0 < sub_d4ced421.length:
        require s < sub_d4ced421.length
        mem[0] = 9
        if arg1 != address(sub_d4ced421[s].field_0):
            s = s + 1
            continue 
        if s == -1:
            revert with 0, 'this address is not in swapList'
        if not stor4[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers or owners may perform this action'
        require ext_code.size(arg1)
        call arg1.0x6328e577 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.supplyToken() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            call arg1.supplyToken() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    revert with 0, 'this address is not in swapList'
}

function sub_b8d16810(?) {
    s = 0
    while 0 < sub_d4ced421.length:
        require s < sub_d4ced421.length
        mem[0] = 9
        if address(sub_d4ced421[s].field_0) != msg.sender:
            s = s + 1
            continue 
        if s == -1:
            revert with 0, 'this address is not in swapList'
        s = 0
        while 0 < sub_d4ced421.length:
            require s < sub_d4ced421.length
            mem[0] = 9
            if address(sub_d4ced421[s].field_0) != msg.sender:
                s = s + 1
                continue 
            require sub_d4ced421.length - 1 < sub_d4ced421.length
            if s != sub_d4ced421.length - 1:
                require s < sub_d4ced421.length
                address(sub_d4ced421[s].field_0) = address(sub_d4ced421[sub_d4ced421.length].field_0)
            address(sub_d4ced421[sub_d4ced421.length].field_0) = 0
            sub_d4ced421.length--
            if sub_d4ced421.length > sub_d4ced421.length - 1:
                idx = sha3(9) + sub_d4ced421.length - 1
                while sha3(9) + sub_d4ced421.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit 0xeecb0840: arg1, msg.sender
        require sub_d4ced421.length - 1 < sub_d4ced421.length
        if sub_d4ced421.length - 1 != -1:
            require -1 < sub_d4ced421.length
            address(sub_d4ced421.field_0) = address(sub_d4ced421[sub_d4ced421.length].field_0)
        address(sub_d4ced421[sub_d4ced421.length].field_0) = 0
        sub_d4ced421.length--
        if sub_d4ced421.length > sub_d4ced421.length - 1:
            idx = sha3(9) + sub_d4ced421.length - 1
            while sha3(9) + sub_d4ced421.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit 0xeecb0840: arg1, msg.sender
    revert with 0, 'this address is not in swapList'
}

function sub_49760cce(?) {
    if not uint8(stor7.field_16):
        revert with 0, 'can't redemption now'
    if arg1 <= 0:
        revert with 0, 'the _value is invalid'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'the _value is invalid'
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not eth.balance(this.address):
        require totalSupply
        if 0 / totalSupply > 0:
            call arg2 with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require eth.balance(this.address)
        require eth.balance(this.address) * arg1 / eth.balance(this.address) == arg1
        require totalSupply
        if eth.balance(this.address) * arg1 / totalSupply > 0:
            call arg2 with:
               value eth.balance(this.address) * arg1 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    s = 0
    t = 0
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        mem[100] = this.address
        require ext_code.size(address(sub_516aa695[idx].field_0))
        call address(sub_516aa695[idx].field_0).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            s = s
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            require totalSupply
            require idx < sub_516aa695.length
            mem[0] = 8
            mem[100] = arg2
            mem[132] = 0 / totalSupply
            require ext_code.size(address(sub_516aa695[idx].field_0))
            call address(sub_516aa695[idx].field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0 / totalSupply
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = 0 / totalSupply
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require ext_call.return_data[0]
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] == arg1
        require totalSupply
        require idx < sub_516aa695.length
        mem[0] = 8
        mem[100] = arg2
        mem[132] = ext_call.return_data[0] * arg1 / totalSupply
        require ext_code.size(address(sub_516aa695[idx].field_0))
        call address(sub_516aa695[idx].field_0).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] * arg1 / totalSupply
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0] * arg1 / totalSupply
        t = ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function sub_15e09f3c(?) {
    require arg1
    idx = 0
    while idx < sub_516aa695.length:
        mem[0] = 8
        if arg1 != address(sub_516aa695[idx].field_0):
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'the address isn't asset'
        require msg.sender == owner
        require arg1
        idx = 0
        while idx < sub_516aa695.length:
            mem[0] = 8
            if arg1 != address(sub_516aa695[idx].field_0):
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0, 'the asset dosen't exist'
            require arg1
            idx = 0
            while idx < sub_516aa695.length:
                mem[0] = 8
                if arg1 != address(sub_516aa695[idx].field_0):
                    idx = idx + 1
                    continue 
                require sub_516aa695.length - 1 < sub_516aa695.length
                if idx != sub_516aa695.length:
                    require arg1
                    idx = 0
                    while idx < sub_516aa695.length:
                        mem[0] = 8
                        if arg1 != address(sub_516aa695[idx].field_0):
                            idx = idx + 1
                            continue 
                        require idx < sub_516aa695.length
                        address(sub_516aa695[idx].field_0) = address(sub_516aa695[sub_516aa695.length].field_0)
                        require sub_516aa695.length - 1 < sub_516aa695.length
                        address(sub_516aa695[sub_516aa695.length].field_0) = 0
                        sub_516aa695.length--
                        if sub_516aa695.length > sub_516aa695.length - 1:
                            idx = sha3(8) + sub_516aa695.length - 1
                            while sha3(8) + sub_516aa695.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        emit 0xb61660aa: arg1
                    require -1 < sub_516aa695.length
                    address(sub_516aa695.field_0) = address(sub_516aa695[sub_516aa695.length].field_0)
                address(sub_516aa695[sub_516aa695.length].field_0) = 0
                sub_516aa695.length--
                if sub_516aa695.length > sub_516aa695.length - 1:
                    idx = sha3(8) + sub_516aa695.length - 1
                    while sha3(8) + sub_516aa695.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                emit 0xb61660aa: arg1
            require sub_516aa695.length - 1 < sub_516aa695.length
            if sub_516aa695.length != -1:
                require arg1
                idx = 0
                while idx < sub_516aa695.length:
                    mem[0] = 8
                    if arg1 != address(sub_516aa695[idx].field_0):
                        idx = idx + 1
                        continue 
                    require idx < sub_516aa695.length
                    address(sub_516aa695[idx].field_0) = address(sub_516aa695[sub_516aa695.length].field_0)
                    require sub_516aa695.length - 1 < sub_516aa695.length
                    address(sub_516aa695[sub_516aa695.length].field_0) = 0
                    sub_516aa695.length--
                    if sub_516aa695.length > sub_516aa695.length - 1:
                        idx = sha3(8) + sub_516aa695.length - 1
                        while sha3(8) + sub_516aa695.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit 0xb61660aa: arg1
                require -1 < sub_516aa695.length
                address(sub_516aa695.field_0) = address(sub_516aa695[sub_516aa695.length].field_0)
            address(sub_516aa695[sub_516aa695.length].field_0) = 0
            sub_516aa695.length--
            if sub_516aa695.length > sub_516aa695.length - 1:
                idx = sha3(8) + sub_516aa695.length - 1
                while sha3(8) + sub_516aa695.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit 0xb61660aa: arg1
        revert with 0, 'the asset dosen't exist'
    revert with 0, 'the address isn't asset'
}

function sub_9f53aa84(?) {
    if not stor4[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers or owners may perform this action'
    if arg1:
        idx = 0
        while idx < sub_516aa695.length:
            mem[0] = 8
            if arg1 != address(sub_516aa695[idx].field_0):
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the supplyToken is not legal asset'
            if arg4:
                idx = 0
                while idx < sub_516aa695.length:
                    mem[0] = 8
                    if arg4 != address(sub_516aa695[idx].field_0):
                        idx = idx + 1
                        continue 
                    if idx == -1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the targetToken is not legal asset'
                    create contract with 0 wei
                                    code: code.data[19198 len 5249], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1:
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(create.new_address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    sub_d4ced421.length++
                    address(sub_d4ced421[sub_d4ced421.length].field_0) = address(create.new_address)
                    emit 0xbf7bb857: address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7, address(create.new_address)
                    return 0
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the targetToken is not legal asset'
            create contract with 0 wei
                            code: code.data[19198 len 5249], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(create.new_address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            sub_d4ced421.length++
            address(sub_d4ced421[sub_d4ced421.length].field_0) = address(create.new_address)
            emit 0xbf7bb857: address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7, address(create.new_address)
            return 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the supplyToken is not legal asset'
    if arg4:
        idx = 0
        while idx < sub_516aa695.length:
            mem[0] = 8
            if arg4 != address(sub_516aa695[idx].field_0):
                idx = idx + 1
                continue 
            if idx == -1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the targetToken is not legal asset'
            create contract with 0 wei
                            code: code.data[19198 len 5249], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(create.new_address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            sub_d4ced421.length++
            address(sub_d4ced421[sub_d4ced421.length].field_0) = address(create.new_address)
            emit 0xbf7bb857: address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7, address(create.new_address)
            return 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the targetToken is not legal asset'
    create contract with 0 wei
                    code: code.data[19198 len 5249], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(create.new_address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_d4ced421.length++
    address(sub_d4ced421[sub_d4ced421.length].field_0) = address(create.new_address)
    emit 0xbf7bb857: address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7, address(create.new_address)
    return 0
}



}
