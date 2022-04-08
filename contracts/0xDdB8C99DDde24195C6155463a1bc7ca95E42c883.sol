contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor3;

function _fallback() {
    stor0 = address(code.data[5087 len 32])
    stor1 = address(code.data[5119 len 32])
    stor2 = address(code.data[5151 len 32])
    stor3 = 0
    return code.data[159 len 4928]
}



// =====================  Runtime code  =====================


#
#  - bid(string arg1, string arg2, uint256 arg3)
#
address stor0;
address stor1;
address stor2;
uint8 stor3;

function _fallback() payable {
    revert
}

function admin() {
    return stor0, stor1, stor2
}

function abandon() {
    require stor1 == msg.sender
    stor3 = 1
}

function payTip() payable {
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function namehash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
}

function acceptBid(string arg1, uint64 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _51 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 288] = 0
    require ext_code.size(stor0)
    call stor0.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args _51
    mem[ceil32(arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    mem[ceil32(arg1.length) + 160] = 0
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _95 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 256] = 0
    require ext_code.size(stor2)
    call stor2.0xba56763e with:
         gas gas_remaining - 710 wei
        args arg2
    mem[ceil32(arg1.length) + 128 len 128] = ext_call.return_data[0 len 128]
    require ext_call.success
    require ext_call.return_data[0] == _95
    mem[ceil32(arg1.length) + 128] = 0x8f5b75300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = arg2
    mem[ceil32(arg1.length) + 164] = 2
    require ext_code.size(stor2)
    call stor2.0x8f5b753 with:
         gas gas_remaining - 710 wei
        args arg2 << 192, 2
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _125 = sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit BidAccepted(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), arg2 << 192, _125);
    if msg.value <= 0:
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function declineBid(string arg1, uint64 arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _51 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 288] = 0
    require ext_code.size(stor0)
    call stor0.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args _51
    mem[ceil32(arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    mem[ceil32(arg1.length) + 160] = 0
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _95 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 256] = 0
    require ext_code.size(stor2)
    call stor2.0xba56763e with:
         gas gas_remaining - 710 wei
        args arg2
    mem[ceil32(arg1.length) + 128 len 128] = ext_call.return_data[0 len 128]
    require ext_call.success
    require ext_call.return_data[0] == _95
    mem[ceil32(arg1.length) + 128] = 0x8f5b75300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = arg2
    mem[ceil32(arg1.length) + 164] = 3
    require ext_code.size(stor2)
    call stor2.0x8f5b753 with:
         gas gas_remaining - 710 wei
        args arg2 << 192, 3
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _125 = sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        if arg1.length > 32:
            mem[ceil32(arg1.length) + 256] = mem[160]
            mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 33)] = mem[192 len floor32(arg1.length - 33)]
    emit BidDeclined(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), arg2 << 192, _125);
    if msg.value <= 0:
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function addListing(string arg1, string arg2, uint256 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _153 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
    require ext_code.size(stor0)
    call stor0.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args _153
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require not stor3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xfeff050600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args 128, arg1.length + 160, arg3, msg.sender, arg1.length, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length + 4]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _301 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            if not arg1.length % 32:
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                                if arg2.length:
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 192
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
                                if not arg2.length:
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + floor32(arg1.length) + 64],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length) + 32],
                                                          mem[ceil32(arg1.length) + 160],
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 416 len floor32(arg2.length)],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301),
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if not arg2.length:
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length], uint32(arg2.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 356 len floor32(arg2.length) + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301));
                            else:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _301));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args 128, arg1.length + 160, arg3, msg.sender, arg1.length, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 36]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _308 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            if not arg1.length % 32:
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                                if arg2.length:
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 192
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
                                if not arg2.length:
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + floor32(arg1.length) + 64],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length) + 32],
                                                          mem[ceil32(arg1.length) + 160],
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 416 len floor32(arg2.length)],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308),
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if not arg2.length:
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length], uint32(arg2.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 356 len floor32(arg2.length) + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308));
                            else:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _308));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args 128, arg1.length + 160, arg3, msg.sender, arg1.length, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length + 4]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1028 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            if not arg1.length % 32:
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                                if arg2.length:
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 192
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
                                if not arg2.length:
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + floor32(arg1.length) + 64],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length) + 32],
                                                          mem[ceil32(arg1.length) + 160],
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 416 len floor32(arg2.length)],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028),
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if not arg2.length:
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length], uint32(arg2.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 356 len floor32(arg2.length) + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028));
                            else:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1028));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args 128, arg1.length + 160, arg3, msg.sender, arg1.length, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length + 4], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 388 len floor32(arg2.length)]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1035 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            if not arg1.length % 32:
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                                if arg2.length:
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                      128,
                                                      arg1.length + 160,
                                                      arg3,
                                                      ext_call.return_data[0] << 192,
                                                      arg1.length,
                                                      uint32(arg1.length),
                                                      0,
                                                      mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32],
                                                      sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 192
                                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
                                if not arg2.length:
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + floor32(arg1.length) + 64],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[ceil32(arg1.length) + 160]
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                    if not arg2.length % 32:
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + floor32(arg1.length) + 32],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                                    else:
                                        mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
                                        emit ListingAdded(bytes32 rg1, string rg2, string rg3, uint256 rg4, uint64 rg5):
                                                          128,
                                                          floor32(arg1.length) + 192,
                                                          arg3,
                                                          ext_call.return_data[0] << 192,
                                                          arg1.length,
                                                          uint32(arg1.length),
                                                          0,
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length) + 32],
                                                          mem[ceil32(arg1.length) + 160],
                                                          mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 416 len floor32(arg2.length)],
                                                          sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035),
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if not arg2.length:
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length], uint32(arg2.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 356 len floor32(arg2.length) + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035));
                            else:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                                if not arg2.length % 32:
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035));
                                else:
                                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                    emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1035));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length + arg1.length]), arg1.length + 160, arg3, msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1056 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1056));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1056));
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1056));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[156 len 4], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1056));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1063 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1063));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1063));
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1063));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[156 len 4], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1063));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length + arg1.length]), arg1.length + 160, arg3, msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1878 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1878));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1878));
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1878));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[156 len 4], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1878));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
                if ext_code.size(stor2):
                    call stor2.0xfeff0506 with:
                         gas gas_remaining - 710 wei
                        args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 160, arg3, msg.sender
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                        _1885 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint64(ext_call.return_data[0])
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
                        if not arg1.length:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1885));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=uint32(arg1.length), mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1885));
                        else:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[128]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
                            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = arg2.length
                            if arg2.length:
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[ceil32(arg1.length) + 160]
                                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg2.length + arg1.length]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1885));
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
                                emit ListingAdded(Array(len=arg1.length, data=mem[128], mem[156 len 4], mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 28]), arg1.length + 160, arg3, ext_call.return_data[0] << 192, sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, _1885));
                        if msg.value <= 0:
                        call stor2 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}



}
