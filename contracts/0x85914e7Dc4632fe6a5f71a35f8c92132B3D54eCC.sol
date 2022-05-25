contract main {




// =====================  Runtime code  =====================


const name = 'TESTY'

const decimals = 18

const symbol = 'TST'

const TOTAL_TOKENS = 10

const OWNER = 0x8579a678fc76cae308ca280b58e2b8f2ddd41913

const ADMIN_TOO = 0xe7e10a474b7604cfaf5875071990ef46301c209c


uint8 stor0;
uint256 currentSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
address adminTooAddress;
address newAdminTooAddress;
mapping of uint8 stor8;

function newAdminToo() {
    return newAdminTooAddress
}

function adminToo() {
    return adminTooAddress
}

function totalSupply() {
    return currentSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function sub_aab124b3(?) {
    return bool(stor8[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require msg.sender == owner
    emit ChangeOwnerTo(arg1);
    newOwner = arg1
    return 1
}

function changeAdminToo(address arg1) {
    require msg.sender == owner
    emit ChangeAdminToo(arg1);
    newAdminTooAddress = arg1
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit ChangedOwner(owner, msg.sender);
    owner = newOwner
    newOwner = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function acceptAdminToo() {
    require msg.sender == newAdminTooAddress
    emit ChangedAdminToo(adminTooAddress, msg.sender);
    adminTooAddress = newAdminTooAddress
    newAdminTooAddress = 0
    return 1
}

function TestyTest() {
    owner = 0x8579a678fc76cae308ca280b58e2b8f2ddd41913
    adminTooAddress = 0xe7e10a474b7604cfaf5875071990ef46301c209c
    currentSupply = 10 * 10^18
    balanceOf[stor4] = currentSupply
}

function lowerSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require balanceOf[stor6] - arg1 <= balanceOf[stor6]
    balanceOf[stor6] -= arg1
    require currentSupply - arg1 <= currentSupply
    currentSupply -= arg1
    emit LowerSupply(arg1, msg.sender);
}

function increaseSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require currentSupply + arg1 >= currentSupply
    currentSupply += arg1
    require balanceOf[stor4] + arg1 >= balanceOf[stor4]
    balanceOf[stor4] += arg1
    emit IncreaseSupply(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg2 <= balanceOf[address(msg.sender)]
    emit Transfer(arg2, msg.sender, arg1);
    if arg2:
        require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    return 1
}

function transferExternalToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0 = 0
    return 1
}

function sub_e68358ba(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not stor0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Kyc(arg2, address(_18));
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor0
    require arg3 <= balanceOf[address(arg1)]
    emit Transfer(arg3, arg1, arg2);
    if arg3:
        require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
    return 1
}

function transferToMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require not stor0
        mem[0] = msg.sender
        mem[32] = 2
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_22));
        if _24:
            require balanceOf[address(msg.sender)] - _24 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= _24
            require balanceOf[address(_22)] + _24 >= balanceOf[address(_22)]
            mem[0] = address(_22)
            mem[32] = 2
            balanceOf[address(_22)] += _24
        idx = idx + 1
        continue 
    return 1
}



}
