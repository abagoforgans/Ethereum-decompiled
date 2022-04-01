contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 783]




// =====================  Runtime code  =====================


array of uint256 storedData;

function storedData(address arg1) {
    return storedData[address(arg1)][0 len storedData[address(arg1)].length]
}

function _fallback() payable {
    revert 
}

function register(address arg1, bytes arg2) {
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    storedData[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    emit CampaignDataRegistered(arg1);
}



}
