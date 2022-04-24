contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len -3943] = code.data[4409 len -3943]
    mem[64] = -3847
    mem[-3811] = mem[108 len 20]
    mem[-3747] = mem[160]
    mem[-3715] = mem[192]
    mem[-3683] = mem[224]
    mem[-3651] = mem[287 len 1]
    mem[-3619] = mem[300 len 20]
    mem[-3587] = mem[mem[128] + 96]
    _11 = mem[mem[128] + 96]
    mem[-3555 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0x7de64c89 with:
         gas gas_remaining - 710 wei
        args 0, mem[-3811], 256, mem[-3747 len (32 * _11) + 192]
    require delegate.return_code
    return code.data[466 len 3943]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokensPerEth;
uint256 stor2;
uint256 startTime;
uint256 endTime;
uint256 exchangeRate;
uint256 ethRaised;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint8 percentBurn; offset 16
mapping of uint256 contribution;
mapping of uint256 tokenPurchase;
mapping of uint256 leftoverWei;
uint8 stor15;

function getContribution(address arg1) {
    return contribution[address(arg1)]
}

function getEthRaised() {
    return ethRaised
}

function greenshoeActive() {
    return bool(stor15)
}

function getLeftoverWei(address arg1) {
    return leftoverWei[address(arg1)]
}

function getEndTime() {
    return endTime
}

function getTokensPerEth() {
    return tokensPerEth
}

function getOwner() {
    return owner
}

function getPercentBurn() {
    return percentBurn
}

function getStartTime() {
    return startTime
}

function getExchangeRate() {
    return exchangeRate
}

function getTokenPurchase(address arg1) {
    return tokenPurchase[address(arg1)]
}

function getTokensSold() {
    return (stor7 - tokenPurchase[stor0])
}

function getCapAmount() {
    if stor15:
        return stor2
    return (stor2 - 550000 * 10^18)
}

function setTokens() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0x112c1e90 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function crowdsaleEnded() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xacfb985 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawTokens() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0x7b84bfb5 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function crowdsaleActive() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xaae1288a with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawOwnerEth() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0x8e7a5336 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function withdrawLeftoverWei() {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xeb40c0d6 with:
         gas gas_remaining - 710 wei
        args 0
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function getSaleData(uint256 arg1) {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0x239796e with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return delegate.return_data[0 len 96]
}

function setTokenExchangeRate(uint256 arg1) {
    require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
    delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xd99083f3 with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function _fallback() payable {
    if stor7 - tokenPurchase[stor0] <= 75000 * 10^18 * 24 * 3600:
        require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
        delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xe1f0a45a with:
             gas gas_remaining - 710 wei
            args 0, msg.value
        require delegate.return_code
    if not stor15:
        require stor9 < stor8
        # nil
    else:
        require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
        delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xe1f0a45a with:
             gas gas_remaining - 710 wei
            args 0, msg.value
        require delegate.return_code
}

function sendPurchase() payable {
    if stor7 - tokenPurchase[stor0] <= 75000 * 10^18 * 24 * 3600:
        require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
        delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xe1f0a45a with:
             gas gas_remaining - 710 wei
            args 0, msg.value
        require delegate.return_code
        return bool(delegate.return_data[0])
    if not stor15:
        require stor9 < stor8
        # nil
    else:
        require ext_code.size(0x8f43b453f187658e9519b04ac221ebc9478218c4)
        delegate 0x8f43b453f187658e9519b04ac221ebc9478218c4.0xe1f0a45a with:
             gas gas_remaining - 710 wei
            args 0, msg.value
        require delegate.return_code
        return bool(delegate.return_data[0])
}



}
