contract main {


// =======================  Init code  ======================


address stor6;

function _fallback() {
    require stor6 <= 0
    stor6 = msg.sender
    return code.data[165 len 6165]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
uint256 stor1;
mapping of address stor2;
mapping of uint8 results;
mapping of uint256 stor4;
mapping of uint256 stor5;
address owner;

function results(bytes32 arg1) {
    return results[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function ownerDeposit() payable {
    require msg.sender == owner
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function ownerWithdrawl(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function game(uint256 arg1) payable {
    require msg.value > 0
    require arg1 <= 10
    require arg1 >= 1
    require msg.value <= 10 * 10^18
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x93bbbe5ce77034e3095f0479919962a903f898ad) > 0:
                        stor0 = 0x93bbbe5ce77034e3095f0479919962a903f898ad
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args 'WolframAlpha'
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        stor2[0] = msg.sender
        stor4[0] = msg.value
        stor5[0] = arg1
        emit LogB(0);
        return 0
    require ext_code.size(address(stor1))
    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 9050 wei
        args 0, 96, 160, 0, 12, Mask(96, 0, 'WolframAlpha'), 0, 38, 'random integer number between 1 ', 'and 10' % 281474976710656
    require ext_call.success
    stor2[ext_call.return_data[0]] = msg.sender
    stor4[ext_call.return_data[0]] = msg.value
    stor5[ext_call.return_data[0]] = arg1
    emit LogB(ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
