contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 supply;
address stor3;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 termsAndConditions;
address owner;

function supply() {
    return supply
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_524f2207(?) {
    return termsAndConditions[0 len termsAndConditions.length]
}

function standard() {
    return standard[0 len standard.length]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getTermsAndConditions() {
    return termsAndConditions[0 len termsAndConditions.length]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require stor0[stor3] <= -1
    return (-stor0[stor3] - 1)
}

function balanceOf(address arg1) {
    if stor3 == arg1:
        return 0
    return stor0[address(arg1)]
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTermsAndConditions(string arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner is allowed to change T & C'
    termsAndConditions[] = Array(len=arg1.length, data=arg1[all])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > stor0[address(arg1)]:
        return 0
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require arg3 <= stor0[address(arg1)]
            stor0[address(arg1)] -= arg3
            require arg3 + stor0[arg2] >= stor0[arg2]
            stor0[address(arg2)] = arg3 + stor0[arg2]
            emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= stor0[msg.sender]
    stor0[msg.sender] -= arg2
    require arg2 + stor0[arg1] >= stor0[arg1]
    stor0[address(arg1)] = arg2 + stor0[arg1]
    if ext_code.size(arg1) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg2 <= stor0[msg.sender]
    stor0[msg.sender] -= arg2
    require arg2 + stor0[arg1] >= stor0[arg1]
    stor0[address(arg1)] = arg2 + stor0[arg1]
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if 0 < arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Transfer(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
