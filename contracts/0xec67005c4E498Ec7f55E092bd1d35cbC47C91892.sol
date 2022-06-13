contract main {




// =====================  Runtime code  =====================


const sub_0ffa1015(?) = (835 * 10^17 * 3600)

const sub_7c5a7c2a(?) = (430944 * 24 * 3600)

const sub_f0e0ae3e(?) = (8760 * 24 * 3600)

const sub_f2c8fb59(?) = 10^18

const INITIAL_TOTAL_SUPPLY = 932613 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address councilAddress; offset 8
uint8 stor6; offset 160
address deployerAddress;
uint256 nextMinting;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function nextMinting() {
    return nextMinting
}

function deployer() {
    return deployerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function council() {
    return councilAddress
}

function initialSupplyMinted() {
    return bool(stor6)
}

function _fallback() payable {
    revert
}

function changeCouncil(address arg1) {
    if councilAddress != msg.sender:
        revert with 0, 'Only council can call this'
    councilAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
}

function mintInitialSupply(address arg1) {
    if deployerAddress != msg.sender:
        revert with 0, 'Only deployer can call this'
    if stor6:
        revert with 0, 'Initial minting already complete'
    stor6 = 1
    require arg1
    require totalSupply + 932613 * 10^18 >= totalSupply
    totalSupply += 932613 * 10^18
    require balanceOf[address(arg1)] + 932613 * 10^18 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 932613 * 10^18
    emit Transfer(932613 * 10^18, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function mintInflation() {
    if block.timestamp < nextMinting:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please wait until an interval has passed'
    if block.timestamp < 430944 * 24 * 3600:
        revert with 0, 'Inflation is not enabled yet'
    if not stor6:
        revert with 0, 'Initial minting not complete'
    require nextMinting + (8760 * 24 * 3600) >= nextMinting
    nextMinting += 8760 * 24 * 3600
    require councilAddress
    require totalSupply + (835 * 10^17 * 3600) >= totalSupply
    totalSupply += 835 * 10^17 * 3600
    require balanceOf[stor5] + (835 * 10^17 * 3600) >= balanceOf[stor5]
    balanceOf[stor5] += 835 * 10^17 * 3600
    emit Transfer((835 * 10^17 * 3600), 0, councilAddress);
}



}
