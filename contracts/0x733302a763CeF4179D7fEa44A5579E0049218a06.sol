contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
address stor5;
address stor6;
uint8 stor3F5F;
uint8 stor43CA;
uint8 stor615A;
uint8 stor9E02;
uint8 storA4FE;
uint8 storAB8A;
uint8 storB3EF;
uint8 storB4C7;
uint8 storB4FF;
uint8 storCCF2;
uint8 storE298;

function _fallback() payable {
    stor2 = 0x70a6d91d037843b899b4907d8849124724f56b7
    require not msg.value
    stor3 = msg.sender
    stor43CA = 1
    storB4C7 = 1
    stor3F5F = 1
    stor615A = 1
    stor9E02 = 1
    storAB8A = 1
    storA4FE = 1
    storCCF2 = 1
    storB3EF = 1
    storE298 = 1
    storB4FF = 1
    require stor3 == msg.sender
    stor5 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor6 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[703 len 1907]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_6884329f;
address payoutAddress;
address owner;
mapping of uint8 stor4;
address sub_ea696cacAddress;
address sub_b4d65d3eAddress;

function whiteList(address arg1) {
    return bool(stor4[arg1])
}

function payoutAddress() {
    return payoutAddress
}

function sub_6884329f(?) {
    return sub_6884329f
}

function owner() {
    return owner
}

function sub_b4d65d3e(?) {
    return sub_b4d65d3eAddress
}

function sub_ea696cac(?) {
    return sub_ea696cacAddress
}

function _fallback() payable {
  stop
}

function setWhitelistAddress(address arg1, bool arg2) {
    require owner == msg.sender
    stor4[address(arg1)] = uint8(arg2)
}

function sub_b90017d6(?) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, bool(stor0[arg1].field_512)
}

function setKittyContractAddress(address arg1) {
    require owner == msg.sender
    sub_ea696cacAddress = arg1
    sub_b4d65d3eAddress = arg1
}

function sendEtherToOwner() {
    require owner == msg.sender
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_9a9f400f(?) {
    require 1 == bool(stor4[address(msg.sender)])
    require ext_code.size(sub_b4d65d3eAddress)
    call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_b4d65d3eAddress)
    call sub_b4d65d3eAddress.getKitty(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call sub_ea696cacAddress.0x88c2a0bf with:
         gas gas_remaining - 25710 wei
        args arg1
    stor0.length++
    if not stor0.length > stor0.length + 1:
        stor0[stor0.length].field_0 = 0
        stor0[stor0.length].field_256 = gas_remaining
        stor0[stor0.length].field_512 = 0
        stor0.length++
        stor0[stor0.length].field_0 = 1
        stor0[stor0.length].field_256 = gas_remaining
        stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
        stor0.length++
        stor0[stor0.length].field_0 = 2
        stor0[stor0.length].field_256 = gas_remaining
        stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
        stor0.length++
    else:
        idx = (3 * stor0.length) + 3
        while 3 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            idx = idx + 3
            continue 
        stor0[stor0.length].field_0 = 0
        stor0[stor0.length].field_256 = gas_remaining
        stor0[stor0.length].field_512 = 0
        stor0.length++
        if not stor0.length > stor0.length + 1:
            stor0[stor0.length].field_0 = 1
            stor0[stor0.length].field_256 = gas_remaining
            stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
            stor0.length++
            stor0[stor0.length].field_0 = 2
            stor0[stor0.length].field_256 = gas_remaining
            stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
            stor0.length++
        else:
            idx = (3 * stor0.length) + 3
            while 3 * stor0.length > idx:
                stor0[idx].field_0 = 0
                stor0[idx].field_256 = 0
                stor0[idx].field_512 = 0
                idx = idx + 3
                continue 
            stor0[stor0.length].field_0 = 1
            stor0[stor0.length].field_256 = gas_remaining
            stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
            stor0.length++
            if not stor0.length > stor0.length + 1:
                stor0[stor0.length].field_0 = 2
                stor0[stor0.length].field_256 = gas_remaining
                stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
                stor0.length++
            else:
                idx = (3 * stor0.length) + 3
                while 3 * stor0.length > idx:
                    stor0[idx].field_0 = 0
                    stor0[idx].field_256 = 0
                    stor0[idx].field_512 = 0
                    idx = idx + 3
                    continue 
                stor0[stor0.length].field_0 = 2
                stor0[stor0.length].field_256 = gas_remaining
                stor0[stor0.length].field_512 = uint8(bool(ext_call.return_data[0]))
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    idx = (3 * stor0.length) + 3
                    while 3 * stor0.length > idx:
                        stor0[idx].field_0 = 0
                        stor0[idx].field_256 = 0
                        stor0[idx].field_512 = 0
                        idx = idx + 3
                        continue 
    stor0[stor0.length].field_0 = 3
    stor0[stor0.length].field_256 = gas_remaining
    stor0[stor0.length].field_512 = uint8(bool(ext_call.success))
}



}
