contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
mapping of uint256 stor3;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;

function _fallback() payable {
    stor2 = 1
    stor7 = 0x1111111111111111111111111111111111111111
    stor8 = address('""""""""""""""""""""')
    require not msg.value
    stor10 = code.data[10497 len 20]
    stor11 = code.data[10529 len 20]
    stor9 = code.data[10561 len 20]
    stor12 = code.data[10593 len 20]
    stor0 = 50000000 * 10^18
    stor3[stor8] = 5000000 * 10^18
    stor3[stor9] += 3000000 * 10^18
    stor3[stor12] += 7000000 * 10^18
    stor3[stor7] = 32500000 * 10^18
    return code.data[1012 len 9473]
}



// =====================  Runtime code  =====================


const name = 'SISA Token'

const decimals = 18

const symbol = 'SISA'


uint256 totalSupply;
uint256 totalDividends;
uint256 voteEnds;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct voteBalance;
mapping of uint256 voteCount;
address ico_tokensAddress;
address preICO_tokensAddress;
address bounty_fundsAddress;
address founderAddress;
address adminAddress;
address team_fundsAddress;
address issuerAddress;
address presellerAddress;

function team_funds() {
    return team_fundsAddress
}

function bounty_funds() {
    return bounty_fundsAddress
}

function totalSupply() {
    return totalSupply
}

function issuer() {
    return issuerAddress
}

function founder() {
    return founderAddress
}

function voteCount(address arg1) {
    return voteCount[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function voteBalance(address arg1) {
    return voteBalance[address(arg1)].field_0
}

function voteEnds() {
    return voteEnds
}

function totalDividends() {
    return totalDividends
}

function preICO_tokens() {
    return preICO_tokensAddress
}

function preseller() {
    return presellerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ico_tokens() {
    return ico_tokensAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    totalDividends += msg.value
}

function callVote() {
    require msg.sender == adminAddress
    voteEnds = block.timestamp + (168 * 24 * 3600)
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeIssuer(address arg1) {
    require msg.sender == adminAddress
    allowance[stor7][stor13] = 0
    issuerAddress = arg1
    allowance[stor7][stor13] = balanceOf[stor7]
    return 1
}

function changePreseller(address arg1) {
    require msg.sender == adminAddress
    allowance[stor8][stor14] = 0
    presellerAddress = arg1
    allowance[stor8][stor14] = balanceOf[stor8]
    return 1
}

function castVote(address arg1) {
    if voteBalance[address(msg.sender)].field_256 >= voteEnds:
        require voteBalance[address(msg.sender)].field_0
    else:
        voteBalance[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
        voteBalance[address(msg.sender)].field_256 = voteEnds
    voteCount[address(arg1)] = voteBalance[address(msg.sender)].field_0
    voteBalance[address(msg.sender)].field_0 = 0
}

function transfer(address arg1, uint256 arg2) {
    require totalSupply
    if (totalDividends * balanceOf[address(msg.sender)]) - (voteBalance[address(msg.sender)].field_512 * balanceOf[address(msg.sender)]) / totalSupply > 0:
        call msg.sender with:
           value (totalDividends * balanceOf[address(msg.sender)]) - (voteBalance[address(msg.sender)].field_512 * balanceOf[address(msg.sender)]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[address(msg.sender)].field_512 = totalDividends
    require totalSupply
    if (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply > 0:
        call arg1 with:
           value (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[address(arg1)].field_512 = totalDividends
    if voteBalance[address(msg.sender)].field_256 == voteEnds:
        if voteBalance[address(arg1)].field_256 < voteEnds:
            voteBalance[address(arg1)].field_0 = balanceOf[address(arg1)]
            voteBalance[address(arg1)].field_256 = voteEnds
    else:
        if voteBalance[address(msg.sender)].field_256 < voteEnds:
            voteBalance[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
            voteBalance[address(msg.sender)].field_256 = voteEnds
            if voteBalance[address(arg1)].field_256 < voteEnds:
                voteBalance[address(arg1)].field_0 = balanceOf[address(arg1)]
                voteBalance[address(arg1)].field_256 = voteEnds
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require totalSupply
    if (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply > 0:
        call arg1 with:
           value (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[address(arg1)].field_512 = totalDividends
    require totalSupply
    if (totalDividends * balanceOf[address(arg2)]) - (voteBalance[address(arg2)].field_512 * balanceOf[address(arg2)]) / totalSupply > 0:
        call arg2 with:
           value (totalDividends * balanceOf[address(arg2)]) - (voteBalance[address(arg2)].field_512 * balanceOf[address(arg2)]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[address(arg2)].field_512 = totalDividends
    if voteBalance[address(arg1)].field_256 == voteEnds:
        if voteBalance[address(arg2)].field_256 < voteEnds:
            voteBalance[address(arg2)].field_0 = balanceOf[address(arg2)]
            voteBalance[address(arg2)].field_256 = voteEnds
    else:
        if voteBalance[address(arg1)].field_256 < voteEnds:
            voteBalance[address(arg1)].field_0 = balanceOf[address(arg1)]
            voteBalance[address(arg1)].field_256 = voteEnds
            if voteBalance[address(arg2)].field_256 < voteEnds:
                voteBalance[address(arg2)].field_0 = balanceOf[address(arg2)]
                voteBalance[address(arg2)].field_256 = voteEnds
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == issuerAddress
    require allowance[stor7][stor13] >= arg2
    require totalSupply
    if (totalDividends * balanceOf[stor7]) - (voteBalance[stor7].field_512 * balanceOf[stor7]) / totalSupply > 0:
        call ico_tokensAddress with:
           value (totalDividends * balanceOf[stor7]) - (voteBalance[stor7].field_512 * balanceOf[stor7]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[stor7].field_512 = totalDividends
    require totalSupply
    if (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply > 0:
        call arg1 with:
           value (totalDividends * balanceOf[address(arg1)]) - (voteBalance[address(arg1)].field_512 * balanceOf[address(arg1)]) / totalSupply wei
             gas 2300 * is_zero(value) wei
        voteBalance[address(arg1)].field_512 = totalDividends
    if voteBalance[stor7].field_256 == voteEnds:
        if voteBalance[address(arg1)].field_256 < voteEnds:
            voteBalance[address(arg1)].field_0 = balanceOf[address(arg1)]
            voteBalance[address(arg1)].field_256 = voteEnds
        if balanceOf[stor7] >= arg2:
            if allowance[stor7][address(msg.sender)] >= arg2:
                if arg2 > 0:
                    balanceOf[address(arg1)] += arg2
                    balanceOf[stor7] -= arg2
                    allowance[stor7][address(msg.sender)] -= arg2
                    emit Transfer(arg2, ico_tokensAddress, arg1);
    else:
        if voteBalance[stor7].field_256 >= voteEnds:
            if balanceOf[stor7] >= arg2:
                if allowance[stor7][address(msg.sender)] >= arg2:
                    if arg2 > 0:
                        balanceOf[address(arg1)] += arg2
                        balanceOf[stor7] -= arg2
                        allowance[stor7][address(msg.sender)] -= arg2
                        emit Transfer(arg2, ico_tokensAddress, arg1);
        else:
            voteBalance[stor7].field_0 = balanceOf[stor7]
            voteBalance[stor7].field_256 = voteEnds
            if voteBalance[address(arg1)].field_256 < voteEnds:
                voteBalance[address(arg1)].field_0 = balanceOf[address(arg1)]
                voteBalance[address(arg1)].field_256 = voteEnds
            if balanceOf[stor7] >= arg2:
                if allowance[stor7][address(msg.sender)] >= arg2:
                    if arg2 > 0:
                        balanceOf[address(arg1)] += arg2
                        balanceOf[stor7] -= arg2
                        allowance[stor7][address(msg.sender)] -= arg2
                        emit Transfer(arg2, ico_tokensAddress, arg1);
    return 1
}



}
