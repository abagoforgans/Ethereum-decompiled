contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    mem[96 len -3157] = code.data[3518 len -3157]
    mem[64] = -3061
    stor5 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[192]
    stor1[address(msg.sender)] = 1
    return code.data[361 len 3157]
}



// =====================  Runtime code  =====================


const transfer(address arg1, uint256 arg2) = 0


uint256 totalSupply;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address originalTokenAddress;
mapping of uint256 depositLock;
mapping of uint256 balances;

function name() {
    return name[0 len name.length]
}

function originalToken() {
    return originalTokenAddress
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function isValidSignature(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    require erecover.result
    return bool(stor1[address(signer)])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function depositLock(address arg1) {
    return depositLock[arg1]
}

function _fallback() payable {
    revert
}

function sub_8da845e3(?) {
    return sha3(arg1, arg2, arg3)
}

function addSigner(address arg1) {
    require stor1[address(msg.sender)]
    stor1[address(arg1)] = 1
}

function allowance(address arg1, address arg2) {
    if arg2 != 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4:
        return 0
    return -1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4 == msg.sender
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[arg1]
    balances[address(arg1)] = balances[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
}

function deposit(uint256 arg1, uint256 arg2) {
    require arg2 >= 1
    require (3600 * arg2) + block.timestamp >= depositLock[address(msg.sender)]
    require ext_code.size(originalTokenAddress)
    call originalTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    depositLock[address(msg.sender)] = (3600 * arg2) + block.timestamp
    return 1
}

function withdraw(uint8 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4, uint256 arg5) {
    require balances[address(msg.sender)] >= arg4
    if block.timestamp <= depositLock[address(msg.sender)]:
        require block.number < arg5
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg4, arg5)), arg1 << 248, arg2, arg3) 
        require erecover.result
        require stor1[address(signer)]
    require arg4 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg4
    require ext_code.size(originalTokenAddress)
    call originalTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg4
    require ext_call.success
    require ext_call.return_data[0]
    return bool(ext_call.return_data[0])
}



}
