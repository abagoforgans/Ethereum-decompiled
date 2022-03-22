contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
bool stor2; offset 256
uint8 stor2; offset 160
uint16 stor2; offset 168
uint16 stor2; offset 184
uint16 stor2; offset 200
uint64 stor2; offset 216
uint256 stor3;
uint16 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    uint8(stor2.field_160) = 0
    uint16(stor2.field_168) = 5000
    uint16(stor2.field_184) = 5000
    uint16(stor2.field_200) = 5000
    stor2.field_216 % 1099511627776 = 0
    stor2.field_256 % 1 = 0
    stor2.field_256 % 1 = 0
    stor3 = 200 * 10^18
    stor4 = 0
    stor5 = 0
    return code.data[200 len 1460]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint8 stor2; offset 160
uint16 stor2; offset 168
uint16 stor2; offset 184
uint16 stor2; offset 200
uint64 stor2; offset 216
uint64 stor2; offset 200
uint128 stor2; offset 160
address stor2;
uint256 stor3;
uint16 sub_08f00e31;
uint256 stor4;
uint256 sub_eeaef8e0;
mapping of struct sub_693e3776;

function sub_08f00e31(?) payable {
    return uint16(sub_08f00e31)
}

function sub_693e3776(?) payable {
    return sub_693e3776[arg1 << 240].field_256, 
           sub_693e3776[arg1 << 240].field_512,
           sub_693e3776[arg1 << 240].field_0,
           sub_693e3776[arg1 << 240].field_768
}

function sub_eeaef8e0(?) payable {
    return sub_eeaef8e0
}

function _fallback() payable {
  stop
}

function sub_730c29ef(?) payable {
    idx = 0
    while uint16(idx) < uint16(sub_08f00e31):
        mem[0] = uint16(idx)
        mem[32] = 6
        if sub_693e3776[idx << 240].field_0 != arg1:
            idx = idx + 1
            continue 
        return uint16(idx)
    return 65535
}

function sub_bb6f0ac8(?) payable {
    if msg.sender == stor0:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        stor3 = arg6
        address(stor2.field_0) = arg2
        Mask(96, 0, stor2.field_160) = Mask(96, 0, arg7)
        uint16(stor2.field_168) = arg3
        uint16(stor2.field_184) = arg4
        stor2.field_200 % 72057594037927936 = arg5 % 72057594037927936
        stor2.field_216 % 1099511627776 = Mask(40, 32, arg4) >> 32
        stor2.field_216 % 1099511627776 = Mask(40, 48, arg3) >> 48
        stor2.field_216 % 1099511627776 = Mask(40, 216, arg2) >> 216
}

function Triger() payable {
    idx = 0
    while uint16(idx) < uint16(sub_08f00e31):
        mem[0] = uint16(idx)
        mem[32] = 6
        sub_693e3776[idx << 240].field_768 += uint16(stor2.field_184) * eth.balance(this.address) - (uint16(stor2.field_168) * eth.balance(this.address) / 10000) / 10000 / 10000 * sub_693e3776[idx << 240].field_512
        if (uint16(stor2.field_184) * eth.balance(this.address) - (uint16(stor2.field_168) * eth.balance(this.address) / 10000) / 10000 / 10000 * sub_693e3776[idx << 240].field_512) + sub_693e3776[idx << 240].field_768 >= 10^17:
            call sub_693e3776[idx << 240].field_0 with:
               value sub_693e3776[idx << 240].field_768 wei
                 gas 0 wei
            mem[0] = uint16(idx)
            mem[32] = 6
            sub_693e3776[idx << 240].field_768 = 0
        idx = idx + 1
        continue 
    call address(stor1) with:
       value eth.balance(this.address) - (uint16(stor2.field_184) * eth.balance(this.address) - (uint16(stor2.field_168) * eth.balance(this.address) / 10000) / 10000) wei
         gas 0 wei
}

function sub_0dd46804(?) payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if uint8(stor2.field_160):
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if sub_eeaef8e0 + msg.value > stor3:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 0
                while uint16(idx) < uint16(sub_08f00e31):
                    mem[0] = uint16(idx)
                    mem[32] = 6
                    if sub_693e3776[idx << 240].field_0 != msg.sender:
                        idx = idx + 1
                        continue 
                    if uint16(idx) != 65535:
                        sub_693e3776[idx << 240].field_256 += msg.value
                    else:
                        sub_693e3776[uint16(stor4)].field_0 = msg.sender or Mask(96, 160, sub_693e3776[uint16(stor4)].field_0)
                        uint256(stor4) = uint16(sub_08f00e31) + 1 or Mask(240, 16, uint256(stor4))
                        sub_693e3776[uint16(stor4)].field_256 += msg.value
                    sub_eeaef8e0 += msg.value
                    idx = 0
                    while uint16(idx) < uint16(sub_08f00e31):
                        mem[0] = uint16(idx)
                        mem[32] = 6
                        sub_693e3776[idx << 240].field_512 = 10000 * sub_693e3776[idx << 240].field_256 / sub_eeaef8e0 or Mask(240, 16, sub_693e3776[idx << 240].field_512)
                        idx = idx + 1
                        continue 
                    call address(stor2.field_0).0x97ca0a9f with:
                         gas gas_remaining - 25050 wei
                        args (uint16(stor2.field_200) * msg.value / 10000)
                    require ext_call.success
                    call address(stor1) with:
                       value msg.value wei
                         gas 0 wei
                sub_693e3776[uint16(stor4)].field_0 = msg.sender or Mask(96, 160, sub_693e3776[uint16(stor4)].field_0)
                uint256(stor4) = uint16(sub_08f00e31) + 1 or Mask(240, 16, uint256(stor4))
                sub_693e3776[uint16(stor4)].field_256 += msg.value
                sub_eeaef8e0 += msg.value
                idx = 0
                while uint16(idx) < uint16(sub_08f00e31):
                    mem[0] = uint16(idx)
                    mem[32] = 6
                    sub_693e3776[idx << 240].field_512 = 10000 * sub_693e3776[idx << 240].field_256 / sub_eeaef8e0 or Mask(240, 16, sub_693e3776[idx << 240].field_512)
                    idx = idx + 1
                    continue 
                call address(stor2.field_0).0x97ca0a9f with:
                     gas gas_remaining - 25050 wei
                    args (uint16(stor2.field_200) * msg.value / 10000)
                require ext_call.success
                call address(stor1) with:
                   value msg.value wei
                     gas 0 wei
}



}
