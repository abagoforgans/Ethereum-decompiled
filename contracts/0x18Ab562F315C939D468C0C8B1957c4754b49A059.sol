contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of struct stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[16101 len 20]
    stor1 = code.data[16101 len 20]
    require ext_code.size(stor1)
    call stor1.0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == 200201712010000
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (5 * stor2.length) + 5
        while 5 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            stor2[idx].field_768 = 0
            stor2[idx].field_1024 = 0
            idx = idx + 5
            continue 
    require stor2.length < stor2.length
    stor2[stor2.length].field_0 = 0
    stor2[stor2.length].field_256 = 0
    stor2[stor2.length].field_512 = code.data[16121 len 32]
    stor2[stor2.length].field_768 = code.data[16153 len 32]
    stor2[stor2.length].field_1024 = 0
    return code.data[683 len 15406]
}



// =====================  Runtime code  =====================


const contractVersion = 300201712010000


address owner;
address gcfAddress;
array of struct periods;
uint256 stor3;
uint256 stor4;
uint256 marketCap;
mapping of uint256 buyTokens;
mapping of uint256 sellTokens;
mapping of address myUserWallet;
mapping of uint8 stor9;

function buyTokens(address arg1, uint256 arg2) {
    return buyTokens[arg1][arg2]
}

function marketCap() {
    return marketCap
}

function isReg(address arg1) {
    return bool(stor9[arg1])
}

function myUserWallet(address arg1) {
    return myUserWallet[arg1]
}

function gcf() {
    return gcfAddress
}

function owner() {
    return owner
}

function getActualPeriod() {
    return periods.length
}

function getPrices() {
    require 2 <= periods.length
    require periods.length - 2 < periods.length
    return periods[periods.length].field_0, periods[periods.length].field_0
}

function sellTokens(address arg1, uint256 arg2) {
    return sellTokens[arg1][arg2]
}

function periods(uint256 arg1) {
    require arg1 < periods.length
    return periods[arg1].field_0, 
           periods[arg1].field_256,
           periods[arg1].field_512,
           periods[arg1].field_768,
           periods[arg1].field_1024
}

function kill() {
    require msg.sender == owner
    require ext_code.size(gcfAddress)
    call gcfAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.sender == owner
    require ext_code.size(gcfAddress)
    call gcfAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function _fallback() payable {
    emit DepositEvent(msg.value, msg.sender);
}

function taxTillNow() {
    require msg.sender == owner
    return stor3, stor4
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(gcfAddress)
    call gcfAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor3 <= eth.balance(this.address)
    require arg2 <= eth.balance(this.address) - stor3
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function Register() {
    create contract with 0 wei
                    code: code.data[8423 len 6940], address(this.address), gcfAddress
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor9[address(create.new_address)] = 1
    myUserWallet[address(msg.sender)] = address(create.new_address)
    emit RegisterEvent(msg.sender, address(create.new_address));
    return address(create.new_address)
}

function buy(uint256 arg1) {
    require stor9[address(msg.sender)]
    require arg1 > 10^16
    require 1 <= periods.length
    require buyTokens[address(msg.sender)][stor2.length - 1] + arg1 >= buyTokens[address(msg.sender)][stor2.length - 1]
    buyTokens[address(msg.sender)][stor2.length - 1] += arg1
    require periods.length - 1 < periods.length
    require periods[periods.length].field_0 + arg1 >= periods[periods.length].field_0
    periods[periods.length].field_0 += arg1
    emit BuyEvent(periods.length - 1, arg1, periods[periods.length].field_0, msg.sender);
    return 1
}

function Reederem(uint256 arg1) {
    require stor9[address(msg.sender)]
    require arg1 > 0
    require 1 <= periods.length
    require sellTokens[address(msg.sender)][stor2.length - 1] + arg1 >= sellTokens[address(msg.sender)][stor2.length - 1]
    sellTokens[address(msg.sender)][stor2.length - 1] += arg1
    require periods.length - 1 < periods.length
    require periods[periods.length].field_0 + arg1 >= periods[periods.length].field_0
    periods[periods.length].field_0 += arg1
    emit ReederemEvent(periods.length - 1, arg1, periods[periods.length].field_0, msg.sender);
    return 1
}

function claimTax() {
    require msg.sender == owner
    if stor3:
        require msg.sender == owner
        require stor3 <= eth.balance(this.address)
        require stor3 <= eth.balance(this.address) - stor3
        call owner with:
           value stor3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit claimTaxex(stor3, 0);
        stor3 = 0
    if stor4:
        require msg.sender == owner
        require ext_code.size(gcfAddress)
        call gcfAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, stor4
        require ext_call.success
        emit claimTaxex(0, stor4);
        stor4 = 0
}

function sub_d4f573f1(?) {
    require msg.sender == owner
    require 1 <= periods.length
    require periods.length - 1 < periods.length
    periods[periods.length].field_0 = arg2
    periods[periods.length].field_0 = arg1
    periods[periods.length].field_0 = arg4
    marketCap = arg3
    emit 0x1e47f9b9: periods.length, periods[periods.length].field_0, periods[periods.length].field_0, periods[periods.length].field_0, marketCap
    periods.length++
    if not periods.length <= periods.length + 1:
        idx = (5 * periods.length) + 5
        while 5 * periods.length > idx:
            periods[idx].field_0 = 0
            periods[idx].field_256 = 0
            periods[idx].field_512 = 0
            periods[idx].field_768 = 0
            periods[idx].field_1024 = 0
            idx = idx + 5
            continue 
    require periods.length < periods.length
    periods[periods.length].field_0 = 0
    periods[periods.length].field_256 = 0
    periods[periods.length].field_512 = 0
    periods[periods.length].field_768 = 0
    periods[periods.length].field_1024 = 0
}

function claimEthers(uint256 arg1) {
    require stor9[address(msg.sender)]
    require periods.length > arg1
    if sellTokens[address(msg.sender)][arg1]:
        require sellTokens[address(msg.sender)][arg1]
        require 5 * sellTokens[address(msg.sender)][arg1] / sellTokens[address(msg.sender)][arg1] == 5
    require stor4 + (5 * sellTokens[address(msg.sender)][arg1] / 100) >= stor4
    stor4 += 5 * sellTokens[address(msg.sender)][arg1] / 100
    require 5 * sellTokens[address(msg.sender)][arg1] / 100 <= sellTokens[address(msg.sender)][arg1]
    require arg1 < periods.length
    if sellTokens[address(msg.sender)][arg1] - (5 * sellTokens[address(msg.sender)][arg1] / 100):
        require sellTokens[address(msg.sender)][arg1] - (5 * sellTokens[address(msg.sender)][arg1] / 100)
        require (sellTokens[address(msg.sender)][arg1] * periods[arg1].field_768) - (5 * sellTokens[address(msg.sender)][arg1] / 100 * periods[arg1].field_768) / sellTokens[address(msg.sender)][arg1] - (5 * sellTokens[address(msg.sender)][arg1] / 100) == periods[arg1].field_768
    require ext_code.size(gcfAddress)
    call gcfAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args (sellTokens[address(msg.sender)][arg1] - (5 * sellTokens[address(msg.sender)][arg1] / 100))
    require ext_call.success
    call msg.sender with:
       value (sellTokens[address(msg.sender)][arg1] * periods[arg1].field_768) - (5 * sellTokens[address(msg.sender)][arg1] / 100 * periods[arg1].field_768) / 10^18 wei
         gas 2300 * is_zero(value) wei
    sellTokens[address(msg.sender)][arg1] = 0
    emit ClaimEthersEvent(arg1, sellTokens[address(msg.sender)][arg1] - (5 * sellTokens[address(msg.sender)][arg1] / 100), periods[arg1].field_768, (sellTokens[address(msg.sender)][arg1] * periods[arg1].field_768) - (5 * sellTokens[address(msg.sender)][arg1] / 100 * periods[arg1].field_768) / 10^18, msg.sender);
    return 1
}

function claimTokens(uint256 arg1) {
    require stor9[address(msg.sender)]
    require periods.length > arg1
    if buyTokens[address(msg.sender)][arg1]:
        require buyTokens[address(msg.sender)][arg1]
        require 5 * buyTokens[address(msg.sender)][arg1] / buyTokens[address(msg.sender)][arg1] == 5
    require stor3 + (5 * buyTokens[address(msg.sender)][arg1] / 100) >= stor3
    stor3 += 5 * buyTokens[address(msg.sender)][arg1] / 100
    require 5 * buyTokens[address(msg.sender)][arg1] / 100 <= buyTokens[address(msg.sender)][arg1]
    require arg1 < periods.length
    if buyTokens[address(msg.sender)][arg1] - (5 * buyTokens[address(msg.sender)][arg1] / 100):
        require buyTokens[address(msg.sender)][arg1] - (5 * buyTokens[address(msg.sender)][arg1] / 100)
        require (10^18 * buyTokens[address(msg.sender)][arg1]) - (10^18 * 5 * buyTokens[address(msg.sender)][arg1] / 100) / buyTokens[address(msg.sender)][arg1] - (5 * buyTokens[address(msg.sender)][arg1] / 100) == 10^18
    require periods[arg1].field_512
    require ext_code.size(gcfAddress)
    call gcfAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args address(this.address), (10^18 * buyTokens[address(msg.sender)][arg1]) - (10^18 * 5 * buyTokens[address(msg.sender)][arg1] / 100) / periods[arg1].field_512
    require ext_call.success
    buyTokens[address(msg.sender)][arg1] = 0
    emit ClaimTokensEvent(arg1, buyTokens[address(msg.sender)][arg1] - (5 * buyTokens[address(msg.sender)][arg1] / 100), periods[arg1].field_512, (10^18 * buyTokens[address(msg.sender)][arg1]) - (10^18 * 5 * buyTokens[address(msg.sender)][arg1] / 100) / periods[arg1].field_512, msg.sender);
    require ext_code.size(gcfAddress)
    call gcfAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (10^18 * buyTokens[address(msg.sender)][arg1]) - (10^18 * 5 * buyTokens[address(msg.sender)][arg1] / 100) / periods[arg1].field_512
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
