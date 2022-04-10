contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = msg.sender
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    require not msg.value
    return code.data[78 len 2680]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 purchasingAllowed;
uint256 totalContribution;
uint256 totalSupply;
uint256 maxSupply;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function maxSupply() {
    return maxSupply
}

function purchasingAllowed() {
    return bool(purchasingAllowed)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require stor0 == msg.sender
    purchasingAllowed = 1
}

function disablePurchasing() {
    require stor0 == msg.sender
    purchasingAllowed = 0
}

function getStats() {
    return totalContribution, totalSupply, maxSupply, bool(purchasingAllowed)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require purchasingAllowed
    if msg.value:
        if totalSupply > maxSupply:
            require stor0 == msg.sender
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        totalSupply += 100 * msg.value
        if stor0 == msg.sender:
            maxSupply += 10^18 * msg.value
        balanceOf[address(msg.sender)] += 100 * msg.value
        emit Transfer((100 * msg.value), this.address, msg.sender);
}



}
