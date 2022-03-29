contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
address stor15;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -9131] = code.data[9822 len -9131]
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor3[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor4 = mem[255 len 1]
    stor6[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor7[] = Array(len=mem[mem[288] + 160], data=mem[mem[288] + 192 len mem[mem[288] + 160]])
    stor8 = mem[351 len 1]
    stor15 = mem[364 len 20]
    return code.data[691 len 9131]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 buyerTokenName;
array of uint256 buyerSymbol;
uint8 buyerDecimals;
uint256 totalBuyerSupply;
array of uint256 issuerTokenName;
array of uint256 issuerSymbol;
uint8 issuerDecimals;
uint256 totalIssuerSupply;
uint256 buyPrice;
uint256 issuePrice;
uint256 cPT;
uint256 premium;
uint8 creditStatus;
address project_walletAddress; offset 8
address collectionFundsAddress;
mapping of uint256 balanceOfBuyer;
mapping of uint256 balanceOfIssuer;
mapping of uint256 allowance;

function buyerSymbol() {
    return buyerSymbol[0 len buyerSymbol.length]
}

function buyerTokenName() {
    return buyerTokenName[0 len buyerTokenName.length]
}

function issuerSymbol() {
    return issuerSymbol[0 len issuerSymbol.length]
}

function issuerTokenName() {
    return issuerTokenName[0 len issuerTokenName.length]
}

function standard() {
    return standard[0 len standard.length]
}

function issuePrice() {
    return issuePrice
}

function collectionFunds() {
    return collectionFundsAddress
}

function buyPrice() {
    return buyPrice
}

function project_wallet() {
    return project_walletAddress
}

function owner() {
    return owner
}

function balanceOfIssuer(address arg1) {
    return balanceOfIssuer[arg1]
}

function creditStatus() {
    return bool(creditStatus)
}

function cPT() {
    return cPT
}

function balanceOfBuyer(address arg1) {
    return balanceOfBuyer[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function premium() {
    return premium
}

function totalBuyerSupply() {
    return totalBuyerSupply
}

function totalIssuerSupply() {
    return totalIssuerSupply
}

function issuerDecimals() {
    return issuerDecimals
}

function buyerDecimals() {
    return buyerDecimals
}

function _fallback() {
    revert 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCreditStatus(bool arg1) {
    require msg.sender == owner
    creditStatus = uint8(arg1)
}

function defineProjectWallet(address arg1) {
    require msg.sender == owner
    project_walletAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function distroyBuyerToken(uint256 arg1) {
    require msg.sender == owner
    balanceOfBuyer[address(this.address)] -= arg1
    totalBuyerSupply -= arg1
}

function distroyIssuerToken(uint256 arg1) {
    require msg.sender == owner
    balanceOfIssuer[address(this.address)] -= arg1
    totalIssuerSupply -= arg1
}

function setPrices(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    buyPrice = arg1
    issuePrice = arg2
    cPT = arg3
    premium = (98 * issuePrice) - (98 * cPT) / 100
}

function moveFunds() {
    require msg.sender == owner
    call project_walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintBuyerToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOfBuyer[address(arg1)] += arg2
    totalBuyerSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function mintIssuerToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOfIssuer[address(arg1)] += arg2
    totalIssuerSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transferBuyer(address arg1, uint256 arg2) {
    require balanceOfBuyer[address(msg.sender)] >= arg2
    require balanceOfBuyer[address(arg1)] + arg2 >= balanceOfBuyer[address(arg1)]
    balanceOfBuyer[address(msg.sender)] -= arg2
    balanceOfBuyer[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferIssue(address arg1, uint256 arg2) {
    require balanceOfIssuer[address(msg.sender)] >= arg2
    require balanceOfIssuer[address(arg1)] + arg2 >= balanceOfIssuer[address(arg1)]
    balanceOfIssuer[address(msg.sender)] -= arg2
    balanceOfIssuer[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buyBuyerTokens() payable {
    require buyPrice
    require balanceOfBuyer[address(this.address)] >= msg.value / buyPrice
    balanceOfBuyer[address(msg.sender)] += msg.value / buyPrice
    balanceOfBuyer[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function buyIssuerTokens() payable {
    require issuePrice
    require balanceOfIssuer[address(this.address)] >= msg.value / issuePrice
    balanceOfIssuer[address(msg.sender)] += msg.value / issuePrice
    balanceOfIssuer[address(this.address)] -= msg.value / issuePrice
    emit Transfer((msg.value / issuePrice), this.address, msg.sender);
}

function sellIssuerTokens(uint256 arg1) {
    require balanceOfIssuer[address(msg.sender)] >= arg1
    balanceOfIssuer[address(this.address)] += arg1
    balanceOfIssuer[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * premium wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * premium)
}

function sellBuyerTokens(uint256 arg1) {
    require creditStatus
    require balanceOfBuyer[address(msg.sender)] >= arg1
    balanceOfBuyer[address(this.address)] += arg1
    balanceOfBuyer[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * cPT wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * cPT)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}



}
