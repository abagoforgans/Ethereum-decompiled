contract main {


// =======================  Init code  ======================


uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor2 = code.data[4350 len 32]
    return code.data[69 len 4281]
}



// =====================  Runtime code  =====================


mapping of address sub_743424cc;
address owner;
uint256 stor1;
address oracleAddress;
uint256 stor2;

function sub_743424cc(?) payable {
    return address(sub_743424cc[arg1])
}

function oracle() payable {
    return address(oracleAddress)
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) payable {
    return (arg1 == address(owner))
}

function transfer(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function changePriceOracle(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
        emit OracleChanged(arg1);
}

function sub_82ee64b1(?) payable {
    mem[ceil32(arg3.length) + 2697 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[1840 len 2441], arg2, Array(len=address(oracleAddress), data=arg3.length, arg3[all])
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2697] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2729 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[1840 len 2441], arg2, Array(len=address(oracleAddress), data=arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 2697 len -(arg3.length % 32) + 32])
    call address(create.new_address).0x1a695230 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    create contract with 0 wei
                    code: code.data[1052 len 788]
    uint256(sub_743424cc[address(create.new_address)]) = create.new_address or Mask(96, 160, uint256(sub_743424cc[address(create.new_address)]))
    emit 0x215eed88: msg.sender, arg2, arg1, address(create.new_address), address(create.new_address)
    return address(create.new_address)
}

function sub_fa1736da(?) payable {
    mem[ceil32(arg2.length) + 2697 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[1840 len 2441], arg1, Array(len=address(oracleAddress), data=arg2.length, arg2[all])
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 2697] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2729 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[1840 len 2441], arg1, Array(len=address(oracleAddress), data=arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 2697 len -(arg2.length % 32) + 32])
    call address(create.new_address).0x1a695230 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    create contract with 0 wei
                    code: code.data[1052 len 788]
    uint256(sub_743424cc[address(create.new_address)]) = create.new_address or Mask(96, 160, uint256(sub_743424cc[address(create.new_address)]))
    emit 0x215eed88: msg.sender, arg1, msg.sender, address(create.new_address), address(create.new_address)
    return address(create.new_address)
}



}
