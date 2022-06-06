contract main {




// =====================  Runtime code  =====================


const name = 'BUSD'

const decimals = 2

const symbol = 'BUSD'


address sub_0eff55e3Address;
address stor3;
mapping of address stor8;
mapping of struct stor9;
address contractAddress;
address sub_96958e19Address;

function sub_0eff55e3(?) {
    return sub_0eff55e3Address
}

function getContractAddress() {
    return contractAddress
}

function sub_96958e19(?) {
    return sub_96958e19Address
}

function sub_36f2c437(?) {
    require msg.sender == stor3
    contractAddress = sub_96958e19Address
}

function acceptUpgrade() {
    require msg.sender == stor3
    sub_96958e19Address = contractAddress
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

function sub_e0887014(?) {
    mem[128 len arg2.length] = arg2[all]
    stor9[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    stor8[call.data[arg2 + 36 len floor32(arg2.length)]][mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]] = arg1
    stor9[address(arg1)].field_1536 = arg3
    stor9[address(arg1)].field_768 = 1
    stor9[address(arg1)].field_1544 = 1
}



}
