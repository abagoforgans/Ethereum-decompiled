contract main {




// =====================  Runtime code  =====================


const name = 'BUSD'

const decimals = 2

const symbol = 'BUSD'


address sub_0eff55e3Address;
address stor4;
address contractAddress;
address previousContractAddress;

function sub_0eff55e3(?) {
    return sub_0eff55e3Address
}

function previousContractAddress() {
    return previousContractAddress
}

function contractAddress() {
    return contractAddress
}

function sub_36f2c437(?) {
    require msg.sender == stor4
    contractAddress = previousContractAddress
}

function acceptUpgrade() {
    require msg.sender == stor4
    previousContractAddress = contractAddress
    contractAddress = sub_0eff55e3Address
}

function _fallback() payable {
    delegate contractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
