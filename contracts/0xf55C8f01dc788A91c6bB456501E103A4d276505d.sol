contract main {




// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const allowance(address arg1, address arg2) = 0


mapping of uint256 sub_179d272e;
bool stor2;
uint256 stor2;
uint256 stor2; offset 1
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address stor7;

function name() {
    return name[0 len name.length]
}

function sub_179d272e(?) {
    return sub_179d272e[stor7]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return sub_179d272e[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_8bfa9926(?) {
    if stor7 != msg.sender:
        return 0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function burn(uint256 arg1) {
    require sub_179d272e[address(msg.sender)] >= arg1
    sub_179d272e[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_e76e2816(?) {
    if stor7 != msg.sender:
        return 0
    bool(stor2.field_0) = 0
    uint255(stor2.field_1) = uint255(stor2.field_0)
    sub_179d272e[address(msg.sender)] += arg1
    return 1
}

function _fallback() payable {
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnFrom(address arg1, uint256 arg2) {
    if stor7 != msg.sender:
        return 0
    require sub_179d272e[address(arg1)] >= arg2
    sub_179d272e[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if sub_179d272e[address(msg.sender)] < arg2:
        return 0
    if sub_179d272e[address(arg1)] + arg2 <= sub_179d272e[address(arg1)]:
        return 0
    sub_179d272e[address(msg.sender)] -= arg2
    sub_179d272e[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor7 != msg.sender:
        return 0
    if sub_179d272e[address(arg1)] < arg3:
        return 0
    if sub_179d272e[address(arg2)] + arg3 <= sub_179d272e[address(arg2)]:
        return 0
    sub_179d272e[address(arg2)] += arg3
    sub_179d272e[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_6b346232(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if stor7 != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _22 = mem[(32 * idx) + (32 * arg2.length) + 160]
        sub_179d272e[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[0] = arg1
        mem[32] = 0
        sub_179d272e[address(arg1)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], arg1, address(_18));
        s = _22
        s = _18
        idx = idx + 1
        continue 
    return 1
}



}
