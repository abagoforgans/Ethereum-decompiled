contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor15;

function _fallback() payable {
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    stor13 = code.data[13124 len 20]
    stor15 = code.data[13144 len 32]
    stor11 = code.data[13176 len 32]
    stor0 = msg.sender
    return code.data[295 len 12817]
}



// =====================  Runtime code  =====================


const name = 'Chek Token'

const decimals = 8

const symbol = 'CHK'


address owner;
address ownerCandidate;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address prevContractAddress;
uint256 investorsCount;
mapping of address investorsIter;
mapping of struct funders;
uint256 sub_eaf931ae;
uint256 sub_50f44153;
uint256 sub_6a18dd10;
uint256 crowdsaleState;
address beneficiaryAddress;
uint256 etherPriceUSDWEI;
uint256 tokenPriceUSDWEI;

function funders(address arg1) {
    return bool(funders[arg1].field_0), 
           funders[arg1].field_0,
           funders[arg1].field_256,
           funders[arg1].field_512,
           funders[arg1].field_768,
           funders[arg1].field_1024
}

function investorsIter(uint256 arg1) {
    return investorsIter[arg1]
}

function totalSupply() {
    return totalSupply
}

function tokenPriceUSDWEI() {
    return tokenPriceUSDWEI
}

function investorsCount() {
    return investorsCount
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_50f44153(?) {
    return sub_50f44153
}

function ownerCandidate() {
    return ownerCandidate
}

function sub_6a18dd10(?) {
    return sub_6a18dd10
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function etherPriceUSDWEI() {
    return etherPriceUSDWEI
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function prevContract() {
    return prevContractAddress
}

function crowdsaleState() {
    return crowdsaleState
}

function sub_eaf931ae(?) {
    return sub_eaf931ae
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    ownerCandidate = arg1
}

function sub_f466c7ee(?) {
    require owner == msg.sender
    require crowdsaleState == 1
    crowdsaleState = 3
}

function sub_8ce2d414(?) {
    require owner == msg.sender
    require calldata.size >= 36
    sub_6a18dd10 = arg1
}

function acceptOwner() {
    require msg.sender == ownerCandidate
    owner = ownerCandidate
    ownerCandidate = 0
}

function updateEtherPrice(uint256 arg1) {
    require owner == msg.sender
    require calldata.size >= 36
    etherPriceUSDWEI = arg1
}

function updateTokenPrice(uint256 arg1) {
    require owner == msg.sender
    require calldata.size >= 36
    tokenPriceUSDWEI = arg1
}

function setPrevContract(address arg1) {
    require owner == msg.sender
    require calldata.size >= 36
    prevContractAddress = arg1
}

function sub_b3e3d1ef(?) {
    require owner == msg.sender
    if crowdsaleState != 1:
        require crowdsaleState == 2
    crowdsaleState = 4
}

function startCrowdsale(uint256 arg1) {
    require owner == msg.sender
    require calldata.size >= 36
    etherPriceUSDWEI = arg1
    crowdsaleState = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_d84a782a(?) {
    require owner == msg.sender
    require crowdsaleState == 1
    crowdsaleState = 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require crowdsaleState == 1
    require calldata.size >= 68
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function refund() {
    require crowdsaleState == 3
    require bool(funders[address(msg.sender)].field_0) == 1
    require funders[address(msg.sender)].field_256 > 0
    funders[address(msg.sender)].field_256 = 0
    balanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    call msg.sender with:
       value funders[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawEther(uint256 arg1) {
    require owner == msg.sender
    require calldata.size >= 36
    if crowdsaleState != 1:
        require crowdsaleState == 2
    require arg1 <= eth.balance(this.address)
    if arg1:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require crowdsaleState == 1
    require calldata.size >= 100
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function sub_1d9873e4(?) {
    require owner == msg.sender
    require calldata.size >= 68
    require crowdsaleState == 1
    require arg2 > 0
    if bool(funders[address(arg1)].field_0) != 1:
        if bool(funders[address(arg1)].field_0) != 1:
            investorsCount++
            investorsIter[stor6] = arg1
            funders[address(arg1)].field_0 = 1
            funders[address(arg1)].field_8 = arg1
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    funders[address(arg1)].field_768 += arg2
    emit Transfer(arg2, this.address, arg1);
}

function sub_5c545fd5(?) {
    require owner == msg.sender
    require calldata.size >= 68
    require crowdsaleState == 1
    require arg2 > 0
    if bool(funders[address(arg1)].field_0) != 1:
        if bool(funders[address(arg1)].field_0) != 1:
            investorsCount++
            investorsIter[stor6] = arg1
            funders[address(arg1)].field_0 = 1
            funders[address(arg1)].field_8 = arg1
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    funders[address(arg1)].field_1024 += arg2
    emit Transfer(arg2, this.address, arg1);
}

function depositUSD(address arg1, uint256 arg2) {
    require owner == msg.sender
    require calldata.size >= 68
    require crowdsaleState == 1
    require arg2 > 0
    require tokenPriceUSDWEI
    if bool(funders[address(arg1)].field_0) != 1:
        if bool(funders[address(arg1)].field_0) != 1:
            investorsCount++
            investorsIter[stor6] = arg1
            funders[address(arg1)].field_0 = 1
            funders[address(arg1)].field_8 = arg1
    balanceOf[address(arg1)] += 100 * 10^6 * arg2 / tokenPriceUSDWEI
    totalSupply += 100 * 10^6 * arg2 / tokenPriceUSDWEI
    funders[address(arg1)].field_512 += arg2
    sub_eaf931ae += arg2
    emit Transfer((100 * 10^6 * arg2 / tokenPriceUSDWEI), this.address, arg1);
}

function _fallback() payable {
    require crowdsaleState == 1
    require sub_eaf931ae < sub_6a18dd10
    require 10^18 * tokenPriceUSDWEI
    require msg.value * etherPriceUSDWEI / 10^18 > 0
    if bool(funders[address(msg.sender)].field_0) != 1:
        if bool(funders[address(msg.sender)].field_0) != 1:
            investorsCount++
            investorsIter[stor6] = msg.sender
            funders[address(msg.sender)].field_0 = 1
            funders[address(msg.sender)].field_8 = msg.sender
    funders[address(msg.sender)].field_256 += msg.value
    funders[address(msg.sender)].field_512 += msg.value * etherPriceUSDWEI / 10^18
    sub_50f44153 += msg.value
    sub_eaf931ae += msg.value * etherPriceUSDWEI / 10^18
    balanceOf[address(msg.sender)] += 100 * 10^6 * msg.value * etherPriceUSDWEI / 10^18 * tokenPriceUSDWEI
    totalSupply += 100 * 10^6 * msg.value * etherPriceUSDWEI / 10^18 * tokenPriceUSDWEI
    emit Transfer((100 * 10^6 * msg.value * etherPriceUSDWEI / 10^18 * tokenPriceUSDWEI), this.address, msg.sender);
}

function sub_616b0a86(?) {
    require owner == msg.sender
    require calldata.size >= 36
    require not crowdsaleState
    require not investorsCount
    prevContractAddress = arg1
    require ext_code.size(prevContractAddress)
    call prevContractAddress.0x2b711051 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    idx = 0
    s = 0
    t = 0
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(prevContractAddress)
        call prevContractAddress.investorsIter(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 8
        if bool(funders[address(ext_call.return_data[0])].field_0) == 1:
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 2
        if balanceOf[address(ext_call.return_data[0])]:
            idx = idx + 1
            s = s
            t = ext_call.return_data[0]
            continue 
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 8
        if bool(funders[address(ext_call.return_data[0])].field_0) != 1:
            investorsCount++
            mem[0] = investorsCount
            mem[32] = 7
            investorsIter[stor6] = address(ext_call.return_data[0])
            funders[address(ext_call.return_data[0])].field_0 = 1
            funders[address(ext_call.return_data[0])].field_8 = address(ext_call.return_data[0])
        require ext_code.size(prevContractAddress)
        call prevContractAddress.0x26ececed with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] > 0:
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 8
            funders[address(ext_call.return_data[0])].field_256 = ext_call.return_data[0]
        require ext_code.size(prevContractAddress)
        call prevContractAddress.0xc238b86c with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] > 0:
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 8
            funders[address(ext_call.return_data[0])].field_512 = ext_call.return_data[0]
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(prevContractAddress)
        call prevContractAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] > 0:
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 2
            balanceOf[address(ext_call.return_data[0])] = ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], this.address, address(ext_call.return_data[0]));
        idx = idx + 1
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(prevContractAddress)
    call prevContractAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    totalSupply = ext_call.return_data[0]
    require ext_code.size(prevContractAddress)
    call prevContractAddress.0x50f44153 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    sub_50f44153 = ext_call.return_data[0]
    require ext_code.size(prevContractAddress)
    call prevContractAddress.0xeaf931ae with:
         gas gas_remaining - 50 wei
    require ext_call.success
    sub_eaf931ae = ext_call.return_data[0]
    require ext_code.size(prevContractAddress)
    call prevContractAddress.0xa3875883 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    etherPriceUSDWEI = ext_call.return_data[0]
}



}
