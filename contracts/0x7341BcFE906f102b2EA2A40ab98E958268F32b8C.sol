contract main {


// =======================  Init code  ======================


uint8 stor0;
uint128 stor2; offset 160
uint256 stor2;
uint8 stor4; offset 224
uint32 stor4; offset 160

function _fallback() payable {
    stor0 = 1
    uint8(stor4.field_224) = 0
    create contract with 0 wei
                    code: code.data[168 len 1953], this.address
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    stor0 = 1
    uint32(stor4.field_160) = 75 * 10^6
    return code.data[2121 len 8033]
}



// =====================  Runtime code  =====================


const sub_0cd40fea(?) = 1

const sub_7a9e5410(?) = 7

const sub_825db5f7(?) = 1

const iterateStart = callcode.return_data[0]


uint8 isEditable;
address sub_6f13464dAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address superContractAddress;
uint256 stor1;

function sub_6f13464d(?) payable {
    return sub_6f13464dAddress
}

function superContract() payable {
    return address(superContractAddress)
}

function isEditable() payable {
    return isEditable
}

function kill() payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if not callcode.return_data[0]:
    selfdestruct(tx.origin)
}

function _fallback() payable {
  stop
}

function contains(address arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function iterateNext(uint256 arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x685a1f3c with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function iterateValid(uint256 arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x33556e84 with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function isDeploymentAdmin(address arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function iterateGet(uint256 arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0xf775b6b5 with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    return callcode.return_data[12 len 20]
}

function sub_e418d20b(?) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
}

function sub_1d50e904(?) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setEditable(bool arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        uint256(stor0.field_0) = arg1 or Mask(248, 8, uint256(stor0.field_0))
}

function add(address arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x21ce24d4 with:
             gas gas_remaining - 50 wei
            args 2, arg1
        require callcode.return_code
}

function remove(address arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x89489a87 with:
             gas gas_remaining - 50 wei
            args 2, arg1
        require callcode.return_code
}

function upgrade(address arg1) payable {
    codecall 0x243e37810dd95094a8408f8dc09c83f83e569159.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 2, tx.origin
    require callcode.return_code
    if callcode.return_data[0]:
        call arg1.0xa820b44d with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call arg1.iterateValid(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args var13002
        if ext_call.return_data[0]:
            call arg1.0xefa52fb3 with:
                 gas gas_remaining - 25050 wei
                args var17002
            require ext_call.success
            call this.address.'
;
O' with:
                 gas gas_remaining - 25050 wei
                args address(ext_call.return_data[0])
            call arg1.iterateValid(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args (var17002 + 1)
            s = 132
            s = var17001
            s = var17002
            while ext_call.return_data[0]:
                call arg1.0xefa52fb3 with:
                     gas gas_remaining - 25050 wei
                    args (s + 1)
                require ext_call.success
                call this.address.'
;
O' with:
                     gas gas_remaining - 25050 wei
                    args address(ext_call.return_data[0])
                mem[100] = s + 2
                call arg1.iterateValid(uint256 rg1) with:
                     gas gas_remaining - 25050 wei
                    args (s + 2)
                mem[96] = ext_call.return_data[0]
                s = 132
                s = ext_call.return_data[0]
                s = s + 1
                continue 
}



}
