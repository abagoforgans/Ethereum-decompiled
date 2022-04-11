contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
address stor6;

function _fallback() {
    mem[96 len -2832] = code.data[3490 len -2832]
    mem[64] = -2736
    stor3 = mem[108 len 20]
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor6 = mem[204 len 20]
    require ext_code.size(stor3)
    call stor3.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claimWithResolver(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), this.address
    require ext_call.success
    return code.data[658 len 2832]
}



// =====================  Runtime code  =====================


const decimals = 0

const version = 'S0.1'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
address issuerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function issuer() {
    return issuerAddress
}

function name(bytes32 arg1) {
    return name[0 len name.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setIssuer(address arg1) {
    require issuerAddress == msg.sender
    issuerAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require issuerAddress == msg.sender
    require arg1 <= balanceOf[stor6]
    balanceOf[stor6] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, issuerAddress, 0);
}

function issue(uint256 arg1) {
    require issuerAddress == msg.sender
    require arg1 + totalSupply >= arg1
    balanceOf[stor6] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, issuerAddress);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
