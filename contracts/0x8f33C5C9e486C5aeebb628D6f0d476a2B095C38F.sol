contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    mem[128] = 'Acciones'
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'Acciones' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -5006] = code.data[5655 len -5006]
    stor1 = msg.sender
    stor7[address(msg.sender)] = stor6
    stor2 = mem[172 len 20]
    stor3[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor4[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor5 = mem[287 len 1]
    stor6 = mem[288]
    return code.data[649 len 5006]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const allowance(address arg1, address arg2) = 0


array of uint256 standard;
address minterAddress;
address sub_e16d1cb3Address;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e16d1cb3(?) {
    return sub_e16d1cb3Address
}

function sub_e8a51fca(?) {
    return stor[_33][0 len stor[_33].length]
}

function _fallback() {
    revert
}

function sub_9848cd0a(?) {
    if msg.sender == minterAddress:
        sub_e16d1cb3Address = arg1
}

function mint(address arg1, uint256 arg2) {
    if msg.sender == minterAddress:
        balanceOf[address(msg.sender)] += arg2
        totalSupply += arg2
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require ext_code.size(sub_e16d1cb3Address)
    call sub_e16d1cb3Address.0xfe6f5fec with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f577b777(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.sender == minterAddress:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 8
        if arg2.length > 0:
            stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 0
            if 31 < stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                idx = 0
                while stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx] = 0
                    idx = idx + 1
                    continue 
}



}
