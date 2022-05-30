contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const TOKEN_FOR_COMPANY = 200 * 10^6

const TOKEN_FOR_ICO = 650 * 10^6

const TOKEN_FOR_BONUS = 50 * 10^6

const TOTAL_TOKEN = 10^9


mapping of uint256 tokenForTeam;
mapping of uint256 tokenForTeamGet;
array of address team;
uint256 startTime;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function teamAddress(uint256 arg1) {
    require arg1 < team.length
    return team[arg1]
}

function tokenForTeamGet(address arg1) {
    return tokenForTeamGet[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenForTeam(address arg1) {
    return tokenForTeam[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function getTeamFund() {
    if block.timestamp >= startTime + (6480 * 24 * 3600):
        if tokenForTeamGet[address(msg.sender)] < 55 * tokenForTeam[address(msg.sender)] / 100:
            tokenForTeamGet[address(msg.sender)] += 45 * tokenForTeam[address(msg.sender)] / 100
            balanceOf[address(msg.sender)] += 45 * tokenForTeam[address(msg.sender)] / 100
        if block.timestamp >= startTime + (3 * 3600 * 24 * 3600):
            if tokenForTeamGet[address(msg.sender)] < tokenForTeam[address(msg.sender)]:
                tokenForTeamGet[address(msg.sender)] += 45 * tokenForTeam[address(msg.sender)] / 100
                balanceOf[address(msg.sender)] += 45 * tokenForTeam[address(msg.sender)] / 100
}



}
