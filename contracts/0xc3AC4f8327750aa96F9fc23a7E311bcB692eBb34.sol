contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xd97c2ecbd1ba8c1785cf416a7111197fd677f638
    return code.data[57 len 1165]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct whitelist;
mapping of struct mycontracts;
mapping of struct factory;

function factory(address arg1) payable {
    return bool(factory[arg1].field_0), bool(factory[arg1].field_8)
}

function whitelist(address arg1) payable {
    return bool(whitelist[arg1].field_0), bool(whitelist[arg1].field_8), bool(whitelist[arg1].field_16)
}

function mycontracts(uint32 arg1, address arg2) payable {
    return bool(mycontracts[arg1][arg2].field_0), mycontracts[arg1][arg2].field_8
}

function _fallback() payable {
    revert 
}

function Auth(uint8 arg1, address arg2) payable {
    require stor0 == msg.sender
    if 0 == arg1:
        whitelist[address(arg2)].field_16 = 0
    if 1 == arg1:
        whitelist[address(arg2)].field_16 = 1
}

function Config(uint8 arg1, address arg2) payable {
    require stor0 == msg.sender
    factory[address(arg2)].field_0 = 1
    if not arg1:
        factory[address(arg2)].field_8 = 0
    if 1 == arg1:
        factory[address(arg2)].field_8 = 1
}

function RegisterTwo(address arg1, address arg2) payable {
    require whitelist[address(arg1)].field_8
    require bool(whitelist[address(arg1)].field_0) != 1
    whitelist[address(arg1)].field_0 = 1
    if bool(factory[address(arg2)].field_8) == 1:
        whitelist[address(arg1)].field_16 = 0
    if 0 == bool(factory[address(arg2)].field_8):
        whitelist[address(arg1)].field_16 = 1
}

function RegisterOne(uint32 arg1, address arg2, address arg3) payable {
    require factory[address(msg.sender)].field_0
    whitelist[address(arg3)].field_0 = -16711936 and 256 or Mask(240, 16, whitelist[address(arg3)].field_0) or whitelist[address(arg3)].field_0
    mycontracts[arg1 << 224][address(arg2)].field_0 = 1
    mycontracts[arg1 << 224][address(arg2)].field_8 = Mask(248, 0, arg3)
    mycontracts[arg1 << 224][address(arg2)].field_256 = 0
}



}
