contract main {




// =====================  Runtime code  =====================


const sub_09d811e4(?) = eth.balance(this.address)


address owner;
address newOwner;
address dtAddress;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor6;
uint256 sPrice;
uint256 bPrice;
uint256 sub_20cdcdd1;
uint256 sub_e0f9a3c6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 members;
mapping of uint256 frozenAccount;
mapping of struct sub_06e6cd1b;
mapping of struct sub_b410c32f;
mapping of struct sub_01cbb5dd;
mapping of uint256 sub_db86bf2a;
mapping of uint256 sub_b886a421;

function sub_01cbb5dd(?) {
    return sub_01cbb5dd[arg1].field_0, 
           sub_01cbb5dd[arg1].field_0,
           sub_01cbb5dd[arg1].field_256,
           sub_01cbb5dd[arg1].field_512,
           sub_01cbb5dd[arg1].field_768,
           sub_01cbb5dd[arg1].field_1024,
           sub_01cbb5dd[arg1].field_1280,
           sub_01cbb5dd[arg1].field_1536,
           bool(sub_01cbb5dd[arg1].field_1792),
           sub_01cbb5dd[arg1].field_1800
}

function sub_06e6cd1b(?) {
    return sub_06e6cd1b[arg1].field_0, 
           sub_06e6cd1b[arg1].field_256,
           sub_06e6cd1b[arg1].field_512,
           sub_06e6cd1b[arg1].field_768,
           sub_06e6cd1b[arg1].field_1024,
           sub_06e6cd1b[arg1].field_1280,
           sub_06e6cd1b[arg1].field_1536,
           sub_06e6cd1b[arg1].field_2048,
           sub_06e6cd1b[arg1].field_2048,
           sub_06e6cd1b[arg1].field_2304
}

function name() {
    return name[0 len name.length]
}

function members(address arg1) {
    return members[arg1]
}

function bPrice() {
    return bPrice
}

function sub_20cdcdd1(?) {
    return sub_20cdcdd1
}

function decimals() {
    return decimals
}

function dt() {
    return dtAddress
}

function sPrice() {
    return sPrice
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

function sub_b410c32f(?) {
    return sub_b410c32f[arg1].field_0, sub_b410c32f[arg1].field_256, bool(sub_b410c32f[arg1].field_512)
}

function frozenAccount(address arg1) {
    return frozenAccount[arg1]
}

function sub_b886a421(?) {
    return sub_b886a421[arg1]
}

function newOwner() {
    return newOwner
}

function sub_db86bf2a(?) {
    return sub_db86bf2a[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0f9a3c6(?) {
    return sub_e0f9a3c6
}

function etherBalance(address arg1) {
    return eth.balance(arg1)
}

function checkFrozen(address arg1) {
    return (frozenAccount[address(arg1)] < 0)
}

function setBuyPrice(uint256 arg1) {
    require msg.sender == owner
    bPrice = arg1
}

function setSellPrice(uint256 arg1) {
    require msg.sender == owner
    sPrice = arg1
}

function totalSupply() {
    require balanceOf[0] <= stor6
    return (stor6 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function sub_36645f86(?) {
    require stor6
    return (1000 * balanceOf[address(arg1)] / stor6)
}

function sub_d5ffab8e(?) {
    require msg.sender == owner
    sub_20cdcdd1 = arg1
    emit 0x18424493: arg1
}

function sub_e925440e(?) {
    require msg.sender == owner
    sub_e0f9a3c6 = arg1
    emit 0x18424493: arg1
}

function sub_1289672b(?) {
    require msg.sender == owner
    sub_b410c32f[arg1 << 224].field_512 = uint8(arg2)
}

function sub_78c2dae3(?) {
    return (sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536)
}

function sub_b46e7dbb(?) {
    return (sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536)
}

function sub_4235beac(?) {
    if sub_01cbb5dd[address(arg1)].field_1800 <= 0:
        return 1
    else:
        return 0
}

function _fallback() payable {
    sub_db86bf2a[address(msg.sender)] = msg.value
    emit ReceiveEther(msg.sender, msg.value);
}

function sub_c268c476(?) {
    require msg.sender == owner
    members[address(arg1)] = arg2
    emit 0x3a71fb5f: address(arg1), arg2
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_2a130b4d(?) {
    if frozenAccount[address(arg1)] < 0:
        return 0
    require stor6
    return (10^6 * balanceOf[address(arg1)] / stor6)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_49754bdd(?) {
    require msg.sender == owner
    frozenAccount[address(arg1)] = arg2
    emit 0x6653c7b0: address(arg1), arg2
    return frozenAccount[address(arg1)]
}

function sub_b0d5ead2(?) {
    if sub_01cbb5dd[address(arg1)].field_1800 <= 0:
        return 0
    return (sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536)
}

function burnToken(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[stor0] > arg1 * 10^decimals
    balanceOf[stor0] += -1 * arg1 * 10^decimals
    return balanceOf[stor0]
}

function sub_7fca4a32(?) {
    if frozenAccount[address(arg1)] <= 0:
        return 0
    require stor6 - balanceOf[stor0]
    return (10^6 * balanceOf[address(arg1)] / stor6 - balanceOf[stor0])
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2 * 10^decimals
    stor6 += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), owner, arg1);
}

function sub_31bbce1c(?) {
    require msg.sender == owner
    require arg2 < eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_393db48a(?) {
    if sub_06e6cd1b[address(arg1)].field_1280 < sub_06e6cd1b[address(arg1)].field_0:
        if uint32(sub_06e6cd1b[address(arg1)].field_2048 / 100) <= arg2:
            return (sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][arg2 << 224].field_0)
        else:
            return 0
    else:
        return 0
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_0480bd09(?) {
    require msg.sender == owner
    require arg1
    require not sub_01cbb5dd[address(arg1)].field_0
    sub_01cbb5dd[address(arg1)].field_0 = arg2
    sub_01cbb5dd[address(arg1)].field_32 = arg3
    sub_01cbb5dd[address(arg1)].field_256 = arg4
    sub_01cbb5dd[address(arg1)].field_512 = arg5
    sub_01cbb5dd[address(arg1)].field_768 = arg6
    return 1
}

function sub_545d3ed2(?) {
    require msg.sender == owner
    require arg2 * 10^decimals < eth.balance(this.address)
    require msg.sender == owner
    require arg2 * 10^decimals < eth.balance(this.address)
    call arg1 with:
       value arg2 * 10^decimals wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function sub_efdbfdd8(?) {
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_e110c510(?) {
    require msg.sender == owner
    require sub_b886a421[address(arg1)] * 10^decimals >= arg2
    require 10^decimals
    sub_b886a421[address(arg1)] -= arg2 / 10^decimals
    require msg.sender == owner
    require arg2 * bPrice / 10^decimals < eth.balance(this.address)
    call arg1 with:
       value arg2 * bPrice / 10^decimals wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg2 * bPrice / 10^decimals)
}

function buy() payable {
    require bPrice
    require balanceOf[stor0] >= msg.value / bPrice * 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value / bPrice * 10^decimals) > balanceOf[address(msg.sender)]
    balanceOf[stor0] += -1 * msg.value / bPrice * 10^decimals
    balanceOf[address(msg.sender)] += msg.value / bPrice * 10^decimals
    emit Transfer((msg.value / bPrice * 10^decimals), owner, msg.sender);
    require balanceOf[stor0] + balanceOf[address(msg.sender)] == balanceOf[stor0] + balanceOf[address(msg.sender)]
}

function sub_bd8ba5dc(?) {
    require balanceOf[address(msg.sender)] > arg2 * 10^decimals
    require balanceOf[address(msg.sender)] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] += -1 * arg2 * 10^decimals
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function sub_6fae3681(?) {
    require msg.sender == owner
    require sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536 >= 0
    sub_b886a421[address(arg1)] = sub_b886a421[address(arg1)] + sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536
    sub_06e6cd1b[address(arg1)].field_1536 = sub_06e6cd1b[address(arg1)].field_512
    sub_06e6cd1b[address(arg1)].field_1280 = sub_06e6cd1b[address(arg1)].field_1280 + sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536
    return (sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536)
}

function sub_2f3766b3(?) {
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint32((100 * uint16(ext_call.return_data[0])) + ext_call.return_data[31 len 1])
}

function sub_bdf63f2a(?) {
    require msg.sender == owner
    require sub_b886a421[address(arg1)] >= arg2
    require bPrice
    require 10^decimals / bPrice
    sub_b886a421[address(arg1)] -= arg2
    require msg.sender == owner
    require arg2 / 10^decimals / bPrice * 10^decimals < eth.balance(this.address)
    require msg.sender == owner
    require arg2 / 10^decimals / bPrice * 10^decimals < eth.balance(this.address)
    call arg1 with:
       value arg2 / 10^decimals / bPrice * 10^decimals wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg2 / 10^decimals / bPrice)
}

function sub_b32016db(?) {
    require sub_01cbb5dd[address(arg1)].field_1800 <= 0
    require not sub_01cbb5dd[address(arg1)][8][address(msg.sender)].field_0
    require balanceOf[address(msg.sender)] > 0
    if not arg2:
        sub_01cbb5dd[address(arg1)].field_1536 += balanceOf[address(msg.sender)]
        sub_01cbb5dd[address(arg1)][8][address(msg.sender)].field_0 = 1
        emit 0x79a02325: -balanceOf[address(msg.sender)], msg.sender, arg1
    else:
        sub_01cbb5dd[address(arg1)].field_1280 += balanceOf[address(msg.sender)]
        sub_01cbb5dd[address(arg1)][8][address(msg.sender)].field_0 = 1
        emit 0x79a02325: balanceOf[address(msg.sender)], msg.sender, arg1
    return 1
}

function sell(uint256 arg1) {
    require sPrice
    require 10^decimals / sPrice
    require eth.balance(owner) >= arg1 * 10^decimals / 10^decimals / sPrice
    require balanceOf[address(msg.sender)] >= arg1 * 10^decimals
    require balanceOf[address(msg.sender)] >= arg1 * 10^decimals
    require balanceOf[stor0] + (arg1 * 10^decimals) > balanceOf[stor0]
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    balanceOf[stor0] += arg1 * 10^decimals
    emit Transfer((arg1 * 10^decimals), msg.sender, owner);
    require balanceOf[address(msg.sender)] + balanceOf[stor0] == balanceOf[address(msg.sender)] + balanceOf[stor0]
    call msg.sender with:
       value arg1 * 10^decimals / 10^decimals / sPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function gettoday() {
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getDay(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint32((10000 * uint16(ext_call.return_data[0])) + (100 * uint8(ext_call.return_data[0])) + ext_call.return_data[31 len 1])
}

function sub_bfaa9249(?) payable {
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_06e6cd1b[address(msg.sender)][10][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 += msg.value
    sub_06e6cd1b[address(msg.sender)].field_2304 += msg.value
    if msg.value > sub_06e6cd1b[address(msg.sender)].field_768 * bPrice:
        sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 = sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 + msg.value - (sub_06e6cd1b[address(msg.sender)].field_768 * bPrice)
}

function sub_814f59d9(?) {
    require msg.sender == owner
    require sub_01cbb5dd[address(arg1)].field_1800 <= 0
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getDay(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_01cbb5dd[address(arg1)].field_1800 = uint32((10000 * uint16(ext_call.return_data[0])) + (101 * uint8(ext_call.return_data[0])))
    if sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536 < 0:
        sub_01cbb5dd[address(arg1)].field_1792 = 0
    else:
        sub_01cbb5dd[address(arg1)].field_1792 = 1
    emit 0x26a0d564: address(arg1), sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536
    return (sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536)
}

function sub_efcd5b57(?) {
    require msg.sender == owner
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_06e6cd1b[address(arg1)].field_1280 < sub_06e6cd1b[address(arg1)].field_0
    require uint32(sub_06e6cd1b[address(arg1)].field_2048 / 100) <= uint32((100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]))
    require sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 > 0
    sub_b886a421[address(arg1)] = sub_b886a421[address(arg1)] + sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0
    sub_06e6cd1b[address(arg1)].field_1280 = sub_06e6cd1b[address(arg1)].field_1280 + sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0
    sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 = sub_06e6cd1b[address(arg1)].field_768
    return (sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0)
}

function sub_bccb10b2(?) {
    require msg.sender == owner
    if sub_01cbb5dd[address(arg1)].field_1800 <= 0:
        return 0
    if sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536 > 0:
        require ext_code.size(dtAddress)
        call dtAddress.getYear(uint256 arg1) with:
             gas gas_remaining wei
            args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dtAddress)
        call dtAddress.getMonth(uint256 arg1) with:
             gas gas_remaining wei
            args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dtAddress)
        call dtAddress.getDay(uint256 arg1) with:
             gas gas_remaining wei
            args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_06e6cd1b[address(arg1)].field_256 = arg1
        sub_06e6cd1b[address(arg1)].field_512 = sub_01cbb5dd[address(arg1)].field_256
        sub_06e6cd1b[address(arg1)].field_768 = sub_01cbb5dd[address(arg1)].field_512
        sub_06e6cd1b[address(arg1)].field_2048 = sub_01cbb5dd[address(arg1)].field_0
        sub_06e6cd1b[address(arg1)].field_2080 = uint32((10000 * uint16(ext_call.return_data[0])) + (101 * uint8(ext_call.return_data[0])))
        sub_06e6cd1b[address(arg1)].field_1024 = sub_01cbb5dd[address(arg1)].field_768
        sub_06e6cd1b[address(arg1)].field_1536 = 0
        sub_06e6cd1b[address(arg1)].field_1280 = 0
        sub_06e6cd1b[address(arg1)].field_0 = sub_06e6cd1b[address(arg1)].field_512 + (sub_06e6cd1b[address(arg1)].field_768 * sub_01cbb5dd[address(arg1)].field_768)
    return (sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536)
}

function sub_f3be635b(?) {
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + ext_call.return_data[31 len 1] << 224].field_512
    require not sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224][3][address(msg.sender)].field_0
    require stor6
    require eth.balance(this.address) >= sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 * 1000 * balanceOf[address(msg.sender)] / stor6 / 1000
    require msg.sender == owner
    require sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 * 1000 * balanceOf[address(msg.sender)] / stor6 / 1000 < eth.balance(this.address)
    call msg.sender with:
       value sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 * 1000 * balanceOf[address(msg.sender)] / stor6 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_256 += sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 * 1000 * balanceOf[address(msg.sender)] / stor6 / 1000
    sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224][3][address(msg.sender)].field_0 += sub_b410c32f[(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 * 1000 * balanceOf[address(msg.sender)] / stor6 / 1000
    return 0
}

function sub_588350b0(?) {
    require msg.sender == owner
    require arg1
    require not sub_01cbb5dd[address(arg1)].field_0
    sub_01cbb5dd[address(arg1)].field_0 = arg2
    sub_01cbb5dd[address(arg1)].field_32 = arg3
    sub_01cbb5dd[address(arg1)].field_256 = arg4
    sub_01cbb5dd[address(arg1)].field_512 = arg5
    sub_01cbb5dd[address(arg1)].field_768 = arg6
    require sub_01cbb5dd[address(arg1)].field_1800 <= 0
    require not sub_01cbb5dd[address(arg1)][8][address(msg.sender)].field_0
    require balanceOf[address(msg.sender)] > 0
    sub_01cbb5dd[address(arg1)].field_1280 += balanceOf[address(msg.sender)]
    sub_01cbb5dd[address(arg1)][8][address(msg.sender)].field_0 = 1
    emit 0x79a02325: balanceOf[address(msg.sender)], msg.sender, arg1
    require msg.sender == owner
    require sub_01cbb5dd[address(arg1)].field_1800 <= 0
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getDay(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_01cbb5dd[address(arg1)].field_1800 = uint32((10000 * uint16(ext_call.return_data[0])) + (101 * uint8(ext_call.return_data[0])))
    if sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536 < 0:
        sub_01cbb5dd[address(arg1)].field_1792 = 0
    else:
        sub_01cbb5dd[address(arg1)].field_1792 = 1
    emit 0x26a0d564: address(arg1), sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536
    require msg.sender == owner
    if sub_01cbb5dd[address(arg1)].field_1800 > 0:
        if sub_01cbb5dd[address(arg1)].field_1280 - sub_01cbb5dd[address(arg1)].field_1536 > 0:
            require ext_code.size(dtAddress)
            call dtAddress.getYear(uint256 arg1) with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(dtAddress)
            call dtAddress.getMonth(uint256 arg1) with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(dtAddress)
            call dtAddress.getDay(uint256 arg1) with:
                 gas gas_remaining wei
                args block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_06e6cd1b[address(arg1)].field_256 = arg1
            sub_06e6cd1b[address(arg1)].field_512 = sub_01cbb5dd[address(arg1)].field_256
            sub_06e6cd1b[address(arg1)].field_768 = sub_01cbb5dd[address(arg1)].field_512
            sub_06e6cd1b[address(arg1)].field_2048 = sub_01cbb5dd[address(arg1)].field_0
            sub_06e6cd1b[address(arg1)].field_2080 = uint32((10000 * uint16(ext_call.return_data[0])) + (101 * uint8(ext_call.return_data[0])))
            sub_06e6cd1b[address(arg1)].field_1024 = sub_01cbb5dd[address(arg1)].field_768
            sub_06e6cd1b[address(arg1)].field_1536 = 0
            sub_06e6cd1b[address(arg1)].field_1280 = 0
            sub_06e6cd1b[address(arg1)].field_0 = sub_06e6cd1b[address(arg1)].field_512 + (sub_06e6cd1b[address(arg1)].field_768 * sub_01cbb5dd[address(arg1)].field_768)
    require msg.sender == owner
    require sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536 >= 0
    sub_b886a421[address(arg1)] = sub_b886a421[address(arg1)] + sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536
    sub_06e6cd1b[address(arg1)].field_1536 = sub_06e6cd1b[address(arg1)].field_512
    sub_06e6cd1b[address(arg1)].field_1280 = sub_06e6cd1b[address(arg1)].field_1280 + sub_06e6cd1b[address(arg1)].field_512 - sub_06e6cd1b[address(arg1)].field_1536
    require msg.sender == owner
    require ext_code.size(dtAddress)
    call dtAddress.getYear(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dtAddress)
    call dtAddress.getMonth(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_06e6cd1b[address(arg1)].field_1280 < sub_06e6cd1b[address(arg1)].field_0
    require uint32(sub_06e6cd1b[address(arg1)].field_2048 / 100) <= uint32((100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]))
    require sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 > 0
    sub_b886a421[address(arg1)] = sub_b886a421[address(arg1)] + sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0
    sub_06e6cd1b[address(arg1)].field_1280 = sub_06e6cd1b[address(arg1)].field_1280 + sub_06e6cd1b[address(arg1)].field_768 - sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0
    sub_06e6cd1b[address(arg1)][7][(100 * uint16(ext_call.return_data[0])) + uint8(ext_call.return_data[0]) << 224].field_0 = sub_06e6cd1b[address(arg1)].field_768
    return 1
}



}
