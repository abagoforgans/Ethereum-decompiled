contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 8850]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address boardAddress;
uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint8 sub_e6617af4; offset 160
uint128 stor2; offset 160
address adminAddress;
uint256 eth_amount;
uint256 sub_bfc16fd2;
uint256 sub_4bee472b;
mapping of uint8 valid_creature;
array of uint256 sub_55ed26c9;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;

function eth_amount() payable {
    return eth_amount
}

function sub_4bee472b(?) payable {
    return sub_4bee472b
}

function sub_55ed26c9(?) payable {
    return sub_55ed26c9[arg1][0 len sub_55ed26c9[arg1].length]
}

function board() payable {
    return boardAddress
}

function valid_creature(address arg1) payable {
    return valid_creature[arg1]
}

function sub_965fd7b6(?) payable {
    return address(stor1.length)
}

function sub_bfc16fd2(?) payable {
    return sub_bfc16fd2
}

function sub_e6617af4(?) payable {
    return sub_e6617af4
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
  stop
}

function register_creature(address arg1) payable {
    if msg.sender == this.address:
        valid_creature[address(arg1)] = 1
    else:
        if msg.sender == adminAddress:
            valid_creature[address(arg1)] = 1
        else:
            if 1 == valid_creature[address(msg.sender)]:
                valid_creature[address(arg1)] = 1
}

function sub_4e15c376(?) payable {
    if adminAddress == msg.sender:
        stor1.length = arg6 or Mask(96, 160, stor1.length)
        create contract with 0 wei
                        code: code.data[5566 len 3284]
        uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
        call address(create.new_address).set_dimensions(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args arg1, arg2
        require ext_call.success
        Mask(96, 0, stor2.field_160) = Mask(96, 0, arg3)
        eth_amount = arg4
        sub_bfc16fd2 = arg5
}

function all_creatures_for_species(uint256 arg1) payable {
    require arg1 < sub_55ed26c9.length
    if storA66C[arg1]:
        mem[160] = address(stor[sha3((2 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977)])
        idx = 160
        s = 0
        while (32 * storA66C[arg1]) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((2 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + 1])
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=storA66C[arg1], data=mem[160 len 32 * storA66C[arg1]])
}

function _random_empty_location() payable {
    call boardAddress.num_squares() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[100] = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
        call boardAddress.0xf6a5414d with:
             gas gas_remaining - 25050 wei
            args ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] != 0:
            s = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
            idx = idx + 1
            continue 
        mem[100] = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
        call boardAddress.0x8f8930da with:
             gas gas_remaining - 25050 wei
            args ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if address(ext_call.return_data[0]) != 0:
            s = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
            idx = idx + 1
            continue 
        return ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
    return 0
}

function clear() payable {
    if adminAddress == msg.sender:
        sub_55ed26c9.length = 0
        if not sub_55ed26c9.length <= 0:
            mem[0] = 7
            idx = 0
            while sha3(7) + (2 * sub_55ed26c9.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 >= stor[idx + sha3(mem[0])].length:
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(s + sha3(mem[0]) + 1)
                    while sha3(s + sha3(mem[0]) + 1) + uint256(stor[s + sha3(mem[0]) + 1]) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + uint256(stor[idx + sha3(mem[0]) + 1]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        sub_4bee472b = 0
}

function set_devcon_map() payable {
    if adminAddress == msg.sender:
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 47, 1, 0, 0
        require ext_call.success
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 49, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 65, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 80, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 121, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 122, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 97, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 69, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 84, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 100, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 115, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 172, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 173, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 174, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 175, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 190, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 203, 1, 0, 0
        call boardAddress.replace_square(uint256 rg1, bool rg2, uint256 rg3, address rg4) with:
             gas gas_remaining - 25050 wei
            args 0, 138, 1, 0, 0
}

function add_creature(address arg1, string arg2) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if msg.value >= (sub_e6617af4 * eth_amount) + sub_bfc16fd2:
        call address(stor1.length).build_creature() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call boardAddress.num_squares() with:
             gas gas_remaining - 25050 wei
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[ceil32(arg2.length) + 132] = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
            call boardAddress.0xf6a5414d with:
                 gas gas_remaining - 25050 wei
                args ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] != 0:
                s = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
                idx = idx + 1
                continue 
            mem[ceil32(arg2.length) + 132] = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
            call boardAddress.0x8f8930da with:
                 gas gas_remaining - 25050 wei
                args ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if address(ext_call.return_data[0]) != 0:
                s = (block.hash(block.number - 1) % ext_call.return_data[0]) + idx
                idx = idx + 1
                continue 
            sub_4bee472b++
            call boardAddress.add_creature(uint256 rg1, address rg2) with:
                 gas gas_remaining - 25050 wei
                args (block.hash(block.number - 1) % ext_call.return_data[0]) + idx, address(ext_call.return_data[0])
            require ext_call.success
            call this.address.0x86acb16d with:
                 gas gas_remaining - 25050 wei
                args address(ext_call.return_data[0])
            mem[ceil32(arg2.length) + 128] = sub_4bee472b
            emit NewSpecies(sub_4bee472b, Array(len=arg2.length, data=arg2[all]), address(ext_call.return_data[0]));
            sub_55ed26c9.length++
            if not sub_55ed26c9.length <= sub_55ed26c9.length + 1:
                s = (2 * sub_55ed26c9.length + 1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
                while (2 * sub_55ed26c9.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > s:
                    uint256(stor[s]) = 0
                    if 31 >= stor[s].length:
                        uint256(stor1[s]) = 0
                        mem[0] = s + 1
                        t = sha3(t + 1)
                        while sha3(t + 1) + uint256(stor1[t]) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                        t = t + 1
                        continue 
                    t = sha3(s)
                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                    uint256(stor1[s]) = 0
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + uint256(stor1[s]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                    s = s + 1
                    continue 
            require sub_4bee472b < sub_55ed26c9.length
            sub_55ed26c9[stor5] = (2 * arg2.length) + 1
            t = sha3((2 * sub_4bee472b) + sha3(7))
            s = 128
            while arg2.length + 128 > s:
                uint256(stor[t]) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((2 * sub_4bee472b) + sha3(7)) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3((2 * sub_4bee472b) + sha3(7)) + (sub_55ed26c9[stor5].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            require sub_4bee472b < sub_55ed26c9.length
            storA66C[stor5]++
            if not storA66C[stor5] <= storA66C[stor5] + 1:
                s = sha3((2 * sub_4bee472b) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5] + 1
                while sha3((2 * sub_4bee472b) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5] > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[sha3((2 * stor5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5]]) = ext_call.return_data[0] or Mask(96, 160, uint256(stor[sha3((2 * stor5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5]]))
            call address(ext_call.return_data[0]).set_eth(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args sub_bfc16fd2
            require ext_call.success
            call address(ext_call.return_data[0]).set_brain(address rg1) with:
                 gas gas_remaining - 25050 wei
                args arg1
            call address(ext_call.return_data[0]).set_location(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args ((block.hash(block.number - 1) % ext_call.return_data[0]) + idx)
            call address(ext_call.return_data[0]).set_hp(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args 3
            call address(ext_call.return_data[0]).0xaeec6197 with:
                 gas gas_remaining - 25050 wei
                args boardAddress
            call address(ext_call.return_data[0]).set_species(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args sub_4bee472b
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 'O%"') >> 224
                 gas gas_remaining - 25050 wei
                args address(stor1.length)
            call address(ext_call.return_data[0]).set_game(address rg1) with:
                 gas gas_remaining - 25050 wei
                args this.address
            call address(ext_call.return_data[0]).set_admin(address rg1) with:
                 gas gas_remaining - 25050 wei
                args adminAddress
            call address(ext_call.return_data[0]) with:
               value sub_bfc16fd2 wei
                 gas 0 wei
            call boardAddress with:
               value msg.value - sub_bfc16fd2 wei
                 gas 0 wei
            call boardAddress.deposit_eth(uint8 rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args uint8(stor2.field_0), eth_amount
        sub_4bee472b++
        call boardAddress.add_creature(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args 0, address(ext_call.return_data[0])
        require ext_call.success
        call this.address.0x86acb16d with:
             gas gas_remaining - 25050 wei
            args address(ext_call.return_data[0])
        emit NewSpecies(sub_4bee472b, Array(len=arg2.length, data=arg2[all]), address(ext_call.return_data[0]));
        sub_55ed26c9.length++
        if not sub_55ed26c9.length <= sub_55ed26c9.length + 1:
            idx = (2 * sub_55ed26c9.length + 1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
            while (2 * sub_55ed26c9.length) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                uint256(stor[idx]) = 0
                if 31 >= stor[idx].length:
                    uint256(stor1[idx]) = 0
                    mem[0] = idx + 1
                    s = sha3(s + 1)
                    while sha3(s + 1) + uint256(stor1[s]) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    s = s + 1
                    continue 
                s = sha3(idx)
                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor1[idx]) = 0
                mem[0] = idx + 1
                s = sha3(idx + 1)
                while sha3(idx + 1) + uint256(stor1[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        require sub_4bee472b < sub_55ed26c9.length
        sub_55ed26c9[stor5][] = Array(len=arg2.length, data=arg2[all])
        require sub_4bee472b < sub_55ed26c9.length
        storA66C[stor5]++
        if not storA66C[stor5] <= storA66C[stor5] + 1:
            idx = storA66C[stor5] + 1
            while storA66C[stor5] > idx:
                uint256(stor[idx + sha3((2 * stor5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977)]) = 0
                idx = idx + 1
                continue 
        uint256(stor[sha3((2 * stor5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5]]) = ext_call.return_data[0] or Mask(96, 160, uint256(stor[sha3((2 * stor5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + storA66C[stor5]]))
        call address(ext_call.return_data[0]).set_eth(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args sub_bfc16fd2
        require ext_call.success
        call address(ext_call.return_data[0]).set_brain(address rg1) with:
             gas gas_remaining - 25050 wei
            args arg1
        call address(ext_call.return_data[0]).set_location(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args 0
        call address(ext_call.return_data[0]).set_hp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args 3
        call address(ext_call.return_data[0]).0xaeec6197 with:
             gas gas_remaining - 25050 wei
            args boardAddress
        call address(ext_call.return_data[0]).set_species(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args sub_4bee472b
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 'O%"') >> 224
             gas gas_remaining - 25050 wei
            args address(stor1.length)
        call address(ext_call.return_data[0]).set_game(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        call address(ext_call.return_data[0]).set_admin(address rg1) with:
             gas gas_remaining - 25050 wei
            args adminAddress
        call address(ext_call.return_data[0]) with:
           value sub_bfc16fd2 wei
             gas 0 wei
        call boardAddress with:
           value msg.value - sub_bfc16fd2 wei
             gas 0 wei
        call boardAddress.deposit_eth(uint8 rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args uint8(stor2.field_0), eth_amount
}



}
