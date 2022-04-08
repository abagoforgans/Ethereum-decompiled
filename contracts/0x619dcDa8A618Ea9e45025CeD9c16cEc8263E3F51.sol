contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 3163]
}



// =====================  Runtime code  =====================


const base = 10^6


address owner;
uint256 stor0;
array of struct get;
array of uint256 countByOwner;

function countByOwner(address arg1) {
    return countByOwner[address(arg1)]
}

function count() {
    return get.length
}

function owner() {
    return address(owner)
}

function get(uint256 arg1) {
    require arg1 < get.length
    return get[arg1].field_0, get[arg1].field_256, get[arg1].field_512
}

function getByOwner(address arg1, uint256 arg2) {
    require arg2 < countByOwner[address(arg1)]
    require countByOwner[address(arg1)][arg2] < get.length
    return get[stor2[address(arg1)][arg2]].field_0, 
           get[stor2[address(arg1)][arg2]].field_256,
           get[stor2[address(arg1)][arg2]].field_512
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) {
    require msg.sender == address(owner)
    emit NewOwner(address(owner), arg1);
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function drain() {
    require msg.sender == address(owner)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deploy(uint256 arg1, string arg2, string arg3, address arg4) payable {
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 1315] = code.data[1848 len 1315]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 1475] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 1507] = msg.sender
    create contract with 0 wei
                    code: code.data[1848 len 1315], arg1, msg.sender
    require create.new_address
    require ext_code.size(arg4)
    call arg4.fee() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    countByOwner[address(msg.sender)]++
    if not countByOwner[address(msg.sender)] <= countByOwner[address(msg.sender)] + 1:
        idx = countByOwner[address(msg.sender)] + 1
        while countByOwner[address(msg.sender)] > idx:
            countByOwner[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    require countByOwner[address(msg.sender)] < countByOwner[address(msg.sender)]
    countByOwner[address(msg.sender)][countByOwner[address(msg.sender)]] = get.length
    get.length++
    if not get.length <= get.length + 1:
        idx = (3 * get.length) + 3
        while 3 * get.length > idx:
            get[idx].field_0 = 0
            get[idx].field_256 = 0
            get[idx].field_512 = 0
            idx = idx + 3
            continue 
    get[get.length].field_0 = create.new_address or Mask(96, 160, get[get.length].field_0)
    get[get.length].field_256 = msg.sender or Mask(96, 160, get[get.length].field_256)
    get[get.length].field_512 = arg4 or Mask(96, 160, get[get.length].field_512)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            require ext_code.size(arg4)
            call arg4.registerAs(address rg1, string rg2, uint256 rg3, string rg4, address rg5) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args address(create.new_address), 160, 10^6, arg2.length + 192, msg.sender, arg2.length, arg2[all], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
            require ext_code.size(arg4)
            call arg4.registerAs(address rg1, string rg2, uint256 rg3, string rg4, address rg5) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args address(create.new_address), 160, 10^6, arg2.length + 192, msg.sender, arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg3.length + 484 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 484 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 516 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            require ext_code.size(arg4)
            call arg4.registerAs(address rg1, string rg2, uint256 rg3, string rg4, address rg5) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args address(create.new_address), 160, 10^6, floor32(arg2.length) + 224, msg.sender, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 452 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 516] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 548 len arg3.length % 32]
            require ext_code.size(arg4)
            call arg4.registerAs(address rg1, string rg2, uint256 rg3, string rg4, address rg5) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9050 wei
                args address(create.new_address), 160, 10^6, floor32(arg2.length) + 224, msg.sender, arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 452 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg3.length + 516 len -(arg3.length % 32) + 32]
    require ext_call.success
    emit Created(msg.sender, arg4, address(create.new_address));
    return 1
}



}
