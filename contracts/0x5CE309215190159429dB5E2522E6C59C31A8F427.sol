contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor4;
uint256 stor5;
address stor7;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'Name Not Set' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 1
    stor5 = 200
    stor0 = msg.sender or Mask(96, 160, stor0)
    bool(stor1.length) = 0
    stor1.length.field_1 = 14
    stor1.length.field_8 = 'Slots v1.00.08' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) <= 0:
        stor7 = 0x79f8969eb2a41c4a29fb488d2c84cf832818fab8
    else:
        stor7 = 0xfbcef56686ef5cf84da4ab1d3ab341db89dd6664
    return code.data[750 len 10683]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_5a8e6e47(?)
#
address stor0;
array of uint256 getName;
address stor2;
address stor3;
uint256 stor3;
uint256 stor4;
array of struct sub_23f5b89e;
mapping of uint256 stor8;

function sub_23f5b89e(?) {
    return sub_23f5b89e[address(msg.sender)].field_2304
}

function GetName() {
    return getName[0 len getName.length]
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_bc94a91c(?) {
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) <= 0:
        return 0
    return 1
}

function SetName(string arg1) {
    require msg.sender == stor0
    getName[] = Array(len=arg1.length, data=arg1[all])
    emit NameChange(Array(len=arg1.length, data=arg1[all]));
}

function sub_2d2402de(?) {
    if not sub_23f5b89e[address(msg.sender)].field_0:
        mem[256] = mem[273 len 15]
        return Array(len=15, data=mem[256])
    if block.number >= sub_23f5b89e[address(msg.sender)].field_512:
        mem[256] = mem[285 len 3]
        return Array(len=3, data=mem[256])
    mem[256] = mem[279 len 9]
    return Array(len=9, data=mem[256])
}

function sub_54180edb(?) {
    if not stor2:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor2 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                        stor2 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    require ext_code.size(stor2)
    call stor2.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    mem[292] = mem[321 len 3]
    require ext_code.size(address(stor3))
    call address(stor3).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args 64, 1600000, 3, mem[292]
    require ext_call.success
    if ext_call.return_data[0] > (1600000 * block.gasprice) + 10^18:
        stor8[0] = arg1 or Mask(96, 160, stor8[0])
    else:
        mem[356] = mem[385 len 3]
        require ext_code.size(address(stor3))
        call address(stor3).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 0, 128, 192, 1600000, 3, mem[356], 0, 0, None
        require ext_call.success
        stor8[ext_call.return_data[0]] = arg1 or Mask(96, 160, stor8[ext_call.return_data[0]])
}

function sub_8a6cc88e(?) {
    if bool(sub_23f5b89e[address(msg.sender)].field_0) == 1:
        emit LogError(address rg1, string rg2):
                      msg.sender,
                      64,
                      32,
                      'Player already has an open wager',
    else:
        sub_23f5b89e[address(msg.sender)].field_2304 += arg2
        sub_23f5b89e[address(msg.sender)].field_256 = 0
        sub_23f5b89e[address(msg.sender)].field_512 = block.number + stor4
        sub_23f5b89e[address(msg.sender)][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + 128] = 4277075694
        mem[ceil32(arg1.length) + 160] = 4277075694
        mem[ceil32(arg1.length) + 192] = 4277075694
        mem[ceil32(arg1.length) + 224] = 4277075694
        mem[ceil32(arg1.length) + 256] = 4277075694
        s = 4
        idx = ceil32(arg1.length) + 128
        while ceil32(arg1.length) + 288 > idx:
            sub_23f5b89e[address(msg.sender)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 9
        while 9 > idx:
            sub_23f5b89e[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_23f5b89e[address(msg.sender)].field_0 = 1
        mem[ceil32(arg1.length) + 448 len arg1.length] = arg1[all]
        emit 0x8a37550e: msg.sender, Array(len=arg1.length, data=arg1[all]), sub_23f5b89e[address(msg.sender)].field_2304, sub_23f5b89e[address(msg.sender)].field_512
        if not sub_23f5b89e[address(msg.sender)].field_2304:
            if not stor2:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor2 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor2 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
            require ext_code.size(stor2)
            call stor2.getAddress() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
            mem[ceil32(arg1.length) + 484] = mem[ceil32(arg1.length) + 513 len 3]
            require ext_code.size(address(stor3))
            call address(stor3).getPrice(string rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args 64, 1600000, 3, mem[ceil32(arg1.length) + 484]
            require ext_call.success
            if ext_call.return_data[0] > (1600000 * block.gasprice) + 10^18:
                stor8[0] = msg.sender or Mask(96, 160, stor8[0])
            else:
                mem[ceil32(arg1.length) + 548] = mem[ceil32(arg1.length) + 577 len 3]
                require ext_code.size(address(stor3))
                call address(stor3).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9050 wei
                    args 0, 128, 192, 1600000, 3, mem[ceil32(arg1.length) + 548], 0
                require ext_call.success
                stor8[ext_call.return_data[0]] = msg.sender or Mask(96, 160, stor8[ext_call.return_data[0]])
}



}
