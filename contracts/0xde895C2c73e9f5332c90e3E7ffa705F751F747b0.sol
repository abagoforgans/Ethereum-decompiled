contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1714]
}



// =====================  Runtime code  =====================


address issuerAddress;
uint256 totalSupply;
mapping of uint256 sub_0e8e0d86;
mapping of uint256 redemptionRequests;

function sub_0e8e0d86(?) payable {
    return sub_0e8e0d86[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function issuer() payable {
    return issuerAddress
}

function redemptionRequests(address arg1) payable {
    return redemptionRequests[arg1]
}

function _fallback() payable {
    revert 
}

function balances(address arg1) payable {
    return (sub_0e8e0d86[address(arg1)] + redemptionRequests[address(arg1)])
}

function issue(address arg1, uint256 arg2, string arg3) payable {
    require issuerAddress == msg.sender
    sub_0e8e0d86[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x56efce58: arg2, Array(len=arg3.length, data=arg3[all]), arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require issuerAddress != msg.sender
    require arg1 != issuerAddress
    require sub_0e8e0d86[address(msg.sender)] >= arg2
    sub_0e8e0d86[address(msg.sender)] -= arg2
    sub_0e8e0d86[arg1] += arg2
}

function sub_b84b8c3c(?) payable {
    require issuerAddress != msg.sender
    sub_0e8e0d86[address(msg.sender)] += redemptionRequests[address(msg.sender)]
    redemptionRequests[address(msg.sender)] = 0
    emit 0x44391500: Array(len=arg1.length, data=arg1[all]), msg.sender
}

function sub_f62e7851(?) payable {
    require issuerAddress == msg.sender
    if redemptionRequests[address(arg1)] > 0:
        redemptionRequests[address(arg1)] = 0
        totalSupply -= redemptionRequests[address(arg1)]
        emit 0xdd67a177: redemptionRequests[address(arg1)], Array(len=arg2.length, data=arg2[all]), arg1
}

function requestRedemption(uint256 arg1, string arg2) payable {
    require issuerAddress != msg.sender
    require sub_0e8e0d86[address(msg.sender)] >= arg1
    require redemptionRequests[address(msg.sender)] <= 0
    sub_0e8e0d86[address(msg.sender)] -= arg1
    redemptionRequests[address(msg.sender)] += arg1
    emit 0xf03c5dfd: arg1, Array(len=arg2.length, data=arg2[all]), msg.sender
}



}
