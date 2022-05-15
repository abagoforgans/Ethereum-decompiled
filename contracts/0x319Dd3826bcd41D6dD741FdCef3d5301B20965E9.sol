contract main {




// =====================  Runtime code  =====================


const ecosystemSupply = 1500000000 * 10^18

const teamSupply = 1500000000 * 10^18

const earlyInitProjectSupply = 1000000000 * 10^18

const airdropSupply = 6000000000 * 10^18

const GOOLA_UNIT = 10^18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor7; offset 160
uint128 stor7; offset 160
address newOwner;
uint256 totalSupply;
uint256 tokensReleasedToTeam;
uint256 tokensReleasedToEcosystem;
uint256 currentSupply;
address goolaTeamAddress;
address ecosystemAddress;
address backupAddress;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function backupAddress() {
    return backupAddress
}

function ecosystemAddress() {
    return ecosystemAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function goolaTeamAddress() {
    return goolaTeamAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor7.field_160))
}

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function tokensReleasedToTeam() {
    return tokensReleasedToTeam
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensReleasedToEcosystem() {
    return tokensReleasedToEcosystem
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = 1
}

function start() {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function processWhenStop() {
    require msg.sender == owner
    require currentSupply <= totalSupply
    require uint8(stor7.field_160)
    balanceOf[stor14] = balanceOf[stor14] + totalSupply - currentSupply
    currentSupply = totalSupply
    emit Transfer((totalSupply - currentSupply), 0, backupAddress);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor7.field_160)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawERC20TokenTo(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor7.field_160)
    require arg1
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function releaseForGoolaTeam() {
    require msg.sender == owner
    require block.timestamp >= stor15 + (2016 * 24 * 3600)
    require tokensReleasedToTeam < 1500000000 * 10^18
    require stor18 < stor20
    require block.timestamp - stor15 / 2016 * 24 * 3600 > stor18
    require currentSupply + 93750000 * 10^18 <= totalSupply
    stor18++
    require balanceOf[stor12] + 93750000 * 10^18 >= balanceOf[stor12]
    balanceOf[stor12] += 93750000 * 10^18
    currentSupply += 93750000 * 10^18
    require tokensReleasedToTeam + 93750000 * 10^18 >= tokensReleasedToTeam
    tokensReleasedToTeam += 93750000 * 10^18
    emit Transfer(93750000 * 10^18, 0, goolaTeamAddress);
    return 1
}

function releaseForEcosystem() {
    require msg.sender == owner
    require block.timestamp >= stor15 + (2016 * 24 * 3600)
    require tokensReleasedToEcosystem < 1500000000 * 10^18
    require stor19 < stor20
    require block.timestamp - stor15 / 2016 * 24 * 3600 > stor19
    require currentSupply + 93750000 * 10^18 <= totalSupply
    stor19++
    require balanceOf[stor13] + 93750000 * 10^18 >= balanceOf[stor13]
    balanceOf[stor13] += 93750000 * 10^18
    currentSupply += 93750000 * 10^18
    require tokensReleasedToEcosystem + 93750000 * 10^18 >= tokensReleasedToEcosystem
    tokensReleasedToEcosystem += 93750000 * 10^18
    emit Transfer(93750000 * 10^18, 0, ecosystemAddress);
    return 1
}

function releaseForEarlyInit(address[] arg1, uint256 arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg2 > 0
    require arg1.length * arg2 <= -stor17 + 1000000000 * 10^18
    require currentSupply + (arg1.length * arg2) <= totalSupply
    require arg1.length < 100000
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        require balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * uint16(idx)) + 140 len 20]]
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] += arg2
        require uint16(idx) < arg1.length
        _29 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_29));
        idx = idx + 1
        continue 
    currentSupply += arg1.length * arg2
    require stor17 + (arg1.length * arg2) >= stor17
    stor17 += arg1.length * arg2
}

function airdropBatchTransfer(address[] arg1, uint256 arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg2 > 0
    require arg1.length * arg2 <= -stor16 + 6000000000 * 10^18
    require currentSupply + (arg1.length * arg2) <= totalSupply
    require arg1.length < 100000
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        require balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * uint16(idx)) + 140 len 20]]
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * uint16(idx)) + 140 len 20]] += arg2
        require uint16(idx) < arg1.length
        _29 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_29));
        idx = idx + 1
        continue 
    currentSupply += arg1.length * arg2
    require stor16 + (arg1.length * arg2) >= stor16
    stor16 += arg1.length * arg2
}



}
