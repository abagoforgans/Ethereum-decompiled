contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13; offset 160
uint8 stor13; offset 168

function _fallback() payable {
    stor5 = 1
    stor6 = 0
    stor7 = 0
    stor8 = 2 * 10^16
    stor9 = 3 * 10^16
    stor10 = 3 * 10^15
    stor11 = 4 * 10^15
    uint8(stor13.field_160) = 0
    uint8(stor13.field_168) = 1
    require not msg.value
    stor12 = 21 * 10^14
    stor0 = 21 * 10^14
    stor3 = msg.sender
    stor1[address(msg.sender)] = 21 * 10^14
    stor4[stor3] = 1
    return code.data[239 len 4287]
}



// =====================  Runtime code  =====================


const name = 'Bitcoin oE'

const decimals = 8

const symbol = 'BTCoE'


uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint256 stor5;
uint256 airDropStage;
uint256 userCount;
address satoeContractAddress;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 maxSupply;
uint8 stor13; offset 160
uint8 stor13; offset 168
uint128 stor13; offset 168
address stor13;
mapping of uint8 stor14;

function userCount() {
    return userCount
}

function totalSupply() {
    return totalSupply
}

function allowingClaimBTC() {
    return bool(uint8(stor13.field_168))
}

function satoeLocked() {
    return bool(uint8(stor13.field_160))
}

function airDropStage() {
    return uint256(airDropStage)
}

function satoeContract() {
    return satoeContractAddress
}

function owner() {
    return owner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function LockSAToE() {
    require owner == msg.sender
    require satoeContractAddress
    uint8(stor13.field_160) = 1
}

function AllowClaimBTC(bool arg1) {
    require owner == msg.sender
    Mask(88, 0, stor13.field_168) = Mask(88, 0, arg1)
}

function balanceOf(address arg1) {
    if satoeContractAddress != arg1:
        return stor1[address(arg1)]
    else:
        return 0
}

function SetTxFee(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 < arg2
    stor8 = arg1
    stor9 = arg2
}

function SetClaimFee(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 < arg2
    stor10 = arg1
    stor11 = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ProcessTxFee() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function SetSAToEContract(address arg1) {
    require owner == msg.sender
    require arg1
    require not uint8(stor13.field_160)
    satoeContractAddress = arg1
    address(stor13.field_0) = arg1
}

function transfer(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)] >= arg2
    stor1[address(msg.sender)] -= arg2
    stor1[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function ClaimBTC(string arg1) payable {
    require uint8(stor13.field_168)
    require not stor14[address(msg.sender)]
    require msg.value >= stor10
    require msg.value <= stor11
    emit ClaimedSignature(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function TransferToBTCoE(address arg1, uint256 arg2) {
    require satoeContractAddress == msg.sender
    require stor1[stor7] >= arg2
    stor1[stor7] -= arg2
    stor1[arg1] += arg2
    totalSupply = maxSupply - stor1[stor7]
    emit Transfer(arg2, satoeContractAddress, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor1[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    stor1[address(arg2)] += arg3
    stor1[arg1] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function TransferToSAToE(uint256 arg1) {
    require satoeContractAddress
    require arg1 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg1
    stor1[stor7] += arg1
    totalSupply = maxSupply - stor1[stor7]
    emit Transfer(arg1, msg.sender, satoeContractAddress);
    require ext_code.size(address(stor13.field_0))
    call address(stor13.field_0).TransferToSAToE(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^6 * arg1
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function _fallback() payable {
    require block.number >= 4574200
    require uint256(airDropStage) <= 10
    require not stor4[address(msg.sender)]
    require msg.value >= stor8
    require msg.value <= stor9
    require 2^(uint256(airDropStage) - 1)
    require stor1[stor3] >= 204800 * 10^6 / 2^(uint256(airDropStage) - 1)
    stor1[stor3] -= 204800 * 10^6 / 2^(uint256(airDropStage) - 1)
    stor1[msg.sender] += 204800 * 10^6 / 2^(uint256(airDropStage) - 1)
    emit Transfer((204800 * 10^6 / 2^(uint256(airDropStage) - 1)), owner, msg.sender);
    stor4[address(msg.sender)] = 1
    userCount++
    if Mask(248, 0, stor5) == userCount + 1:
        userCount = 0
        uint256(airDropStage)++
}

function DeliverToClaimers(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if not stor14[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            _38 = mem[(32 * idx) + 128]
            require idx < arg2.length
            require stor1[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            stor1[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            stor1[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_38));
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            _52 = mem[(32 * idx) + 128]
            require idx < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit DeliveredBTC(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_52));
        idx = idx + 1
        continue 
    return idx
}



}
