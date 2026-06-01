module z_gen #(
    parameter int INDEX = 0  // Instance index to pick seeds
)(
    input  logic clk,
    input  logic rst,
    output logic valid,
    output logic [31:0] za,
    output logic [31:0] zb
);

    //////////////////////////////////////////////////////////////////////////////
    // Functions to return seed based on INDEX
    //////////////////////////////////////////////////////////////////////////////
    function logic [31:0] get_seed_a(input int idx);
        case (idx)
            0:   get_seed_a = 32'h92157601;
            1:   get_seed_a = 32'hAF5A2C09;
            2:   get_seed_a = 32'h52157C10;
            3:   get_seed_a = 32'h7C010C11;
            4:   get_seed_a = 32'hF7817012;
            5:   get_seed_a = 32'h415D0C13;
            6:   get_seed_a = 32'h60B2C412;
            7:   get_seed_a = 32'hD498D417;
            8:   get_seed_a = 32'h6BDD7E19;
            9:   get_seed_a = 32'h94E16023;
            10:  get_seed_a = 32'hC61A6226;
            11:  get_seed_a = 32'hB1806228;
            12:  get_seed_a = 32'h0916D433;
            13:  get_seed_a = 32'hB1178637;
            14:  get_seed_a = 32'hEF875256;
            15:  get_seed_a = 32'hD8B52656;
            16:  get_seed_a = 32'hB241CC5F;
            17:  get_seed_a = 32'h2B162A65;
            18:  get_seed_a = 32'h1F5B9467;
            19:  get_seed_a = 32'h159EEC69;
            20:  get_seed_a = 32'h0552F06A;
            21:  get_seed_a = 32'h69F44471;
            22:  get_seed_a = 32'h1B005877;
            23:  get_seed_a = 32'h0CD4AC78;
            24:  get_seed_a = 32'h0191DE79;
            25:  get_seed_a = 32'hE1DB367E;
            26:  get_seed_a = 32'h094B8E84;
            27:  get_seed_a = 32'hC05ADE8A;
            28:  get_seed_a = 32'hC5ECC48B;
            29:  get_seed_a = 32'h9DE9A68C;
            30:  get_seed_a = 32'h9B94CE8D;
            31:  get_seed_a = 32'hB5EDD88C;
            32:  get_seed_a = 32'hCAB6AC8D;
            33:  get_seed_a = 32'h928FF09E;
            34:  get_seed_a = 32'h02EBBEA5;
            35:  get_seed_a = 32'h6575B4A5;
            36:  get_seed_a = 32'h091286A9;
            37:  get_seed_a = 32'h372B0EAB;
            38:  get_seed_a = 32'hB07CEEAD;
            39:  get_seed_a = 32'h84A254AF;
            40:  get_seed_a = 32'hF8BD50B2;
            41:  get_seed_a = 32'h364EDAB2;
            42:  get_seed_a = 32'hBCE9AEB2;
            43:  get_seed_a = 32'h60D838B7;
            44:  get_seed_a = 32'h5F2306CA;
            45:  get_seed_a = 32'h516400CC;
            46:  get_seed_a = 32'h911586CF;
            47:  get_seed_a = 32'hB7558AD2;
            48:  get_seed_a = 32'hCD8C12D5;
            49:  get_seed_a = 32'hABB810D5;
            50:  get_seed_a = 32'h50B5BED5;
            51:  get_seed_a = 32'h72F7B0DB;
            52:  get_seed_a = 32'h359C66DF;
            53:  get_seed_a = 32'h058BCADF;
            54:  get_seed_a = 32'hA9BB12E4;
            55:  get_seed_a = 32'h82343EE6;
            56:  get_seed_a = 32'h8521B6E9;
            57:  get_seed_a = 32'h1BDC5EF0;
            58:  get_seed_a = 32'h2D3BB4F1;
            59:  get_seed_a = 32'h474268F4;
            60:  get_seed_a = 32'h9F22AF02;
            61:  get_seed_a = 32'h8AD62905;
            62:  get_seed_a = 32'h725B2905;
            63:  get_seed_a = 32'h84A20709;
            64:  get_seed_a = 32'hB484310C;
            65:  get_seed_a = 32'hC5742B0C;
            66:  get_seed_a = 32'h1AB0A314;
            67:  get_seed_a = 32'h1630A715;
            68:  get_seed_a = 32'h7E58211B;
            69:  get_seed_a = 32'hE1C40D31;
            70:  get_seed_a = 32'hDBAAB134;
            71:  get_seed_a = 32'h4F796937;
            72:  get_seed_a = 32'hD9727739;
            73:  get_seed_a = 32'h522CE13A;
            74:  get_seed_a = 32'hD5F9493C;
            75:  get_seed_a = 32'hED918141;
            76:  get_seed_a = 32'hCA599D42;
            77:  get_seed_a = 32'hF1140343;
            78:  get_seed_a = 32'hEA2AD544;
            79:  get_seed_a = 32'h2EDED548;
            80:  get_seed_a = 32'h935E8149;
            81:  get_seed_a = 32'h70A53348;
            82:  get_seed_a = 32'h50D21953;
            83:  get_seed_a = 32'hBBFB7357;
            84:  get_seed_a = 32'h7804DF58;
            85:  get_seed_a = 32'hAF6E8F57;
            86:  get_seed_a = 32'hD361E757;
            87:  get_seed_a = 32'h8AD92F5E;
            88:  get_seed_a = 32'h64A90560;
            89:  get_seed_a = 32'h55E85961;
            90:  get_seed_a = 32'hE4096765;
            91:  get_seed_a = 32'hC5A4E76E;
            92:  get_seed_a = 32'h0FFA996F;
            93:  get_seed_a = 32'hA386E171;
            94:  get_seed_a = 32'hBDE42773;
            95:  get_seed_a = 32'h5BD5B179;
            96:  get_seed_a = 32'hA9F82D7F;
            97:  get_seed_a = 32'h9D9EAD80;
            98:  get_seed_a = 32'h58F74982;
            99:  get_seed_a = 32'h03DA2F84;
            100: get_seed_a = 32'h7E1DDD86;
            101: get_seed_a = 32'hC3601786;
            102: get_seed_a = 32'h5B99F388;
            103: get_seed_a = 32'hAA5F3D8B;
            104: get_seed_a = 32'h01C0B78D;
            105: get_seed_a = 32'h0ED9D38E;
            106: get_seed_a = 32'hEE5F8990;
            107: get_seed_a = 32'hC58F979A;
            108: get_seed_a = 32'h13DE6D9C;
            109: get_seed_a = 32'h487A5F9C;
            110: get_seed_a = 32'hF033B79E;
            111: get_seed_a = 32'hCFCFB9A1;
            112: get_seed_a = 32'h4E457FA5;
            113: get_seed_a = 32'h85CC8BA6;
            114: get_seed_a = 32'hEA3013A7;
            115: get_seed_a = 32'h65FE1FB5;
            116: get_seed_a = 32'h453AE3BB;
            117: get_seed_a = 32'hE522D7BC;
            118: get_seed_a = 32'hE8262BBF;
            119: get_seed_a = 32'h30CD0BCB;
            120: get_seed_a = 32'hBFC407CC;
            121: get_seed_a = 32'h090275CE;
            122: get_seed_a = 32'h32693BCE;
            123: get_seed_a = 32'h741887D1;
            124: get_seed_a = 32'h8AF883DB;
            125: get_seed_a = 32'h111111E1;
            126: get_seed_a = 32'h46CFDDF3;
            127: get_seed_a = 32'h2E629FFD;
            default: get_seed_a = 32'hDEADBEEF;
        endcase
    endfunction



    function logic [31:0] get_seed_b(input int idx);
        case (idx)
            0:   get_seed_b = 32'h8F36CE02;
            1:   get_seed_b = 32'h24084604;
            2:   get_seed_b = 32'hCE4F3404;
            3:   get_seed_b = 32'h7A799E06;
            4:   get_seed_b = 32'h83AF880E;
            5:   get_seed_b = 32'hB13E440F;
            6:   get_seed_b = 32'h8B112214;
            7:   get_seed_b = 32'hBADD6422;
            8:   get_seed_b = 32'h09789E24;
            9:   get_seed_b = 32'hD1C2DA26;
            10:  get_seed_b = 32'h1761D027;
            11:  get_seed_b = 32'h7CFF6232;
            12:  get_seed_b = 32'h2A569634;
            13:  get_seed_b = 32'hD789E037;
            14:  get_seed_b = 32'hE863F638;
            15:  get_seed_b = 32'hAF0D4E38;
            16:  get_seed_b = 32'h6784A03A;
            17:  get_seed_b = 32'hE2F9F63E;
            18:  get_seed_b = 32'h37FE963E;
            19:  get_seed_b = 32'hD4BB2441;
            20:  get_seed_b = 32'h77FE1443;
            21:  get_seed_b = 32'h9A9AFC49;
            22:  get_seed_b = 32'hC98FB850;
            23:  get_seed_b = 32'hCE58C450;
            24:  get_seed_b = 32'hC7824253;
            25:  get_seed_b = 32'hFF253453;
            26:  get_seed_b = 32'h2F58F25B;
            27:  get_seed_b = 32'h6886505E;
            28:  get_seed_b = 32'h5412005F;
            29:  get_seed_b = 32'h0F792A60;
            30:  get_seed_b = 32'h04437861;
            31:  get_seed_b = 32'hDA58FA68;
            32:  get_seed_b = 32'hB592606A;
            33:  get_seed_b = 32'hBB0DA06F;
            34:  get_seed_b = 32'h5C676874;
            35:  get_seed_b = 32'hA82FE879;
            36:  get_seed_b = 32'hDEA8167C;
            37:  get_seed_b = 32'hD92C7A7C;
            38:  get_seed_b = 32'h6762367F;
            39:  get_seed_b = 32'h14E37681;
            40:  get_seed_b = 32'hCE408481;
            41:  get_seed_b = 32'h91CAA086;
            42:  get_seed_b = 32'h86860098;
            43:  get_seed_b = 32'h5C262A99;
            44:  get_seed_b = 32'h4069549B;
            45:  get_seed_b = 32'h7E85189F;
            46:  get_seed_b = 32'hD2314EA5;
            47:  get_seed_b = 32'hE66F8EA8;
            48:  get_seed_b = 32'h75B252AD;
            49:  get_seed_b = 32'h8A45DEB0;
            50:  get_seed_b = 32'h88B33EB3;
            51:  get_seed_b = 32'h134A40BF;
            52:  get_seed_b = 32'h45C592C0;
            53:  get_seed_b = 32'h3B712AC2;
            54:  get_seed_b = 32'h854C4CC4;
            55:  get_seed_b = 32'hB83E6CCD;
            56:  get_seed_b = 32'h76FD6ED4;
            57:  get_seed_b = 32'hA95574D9;
            58:  get_seed_b = 32'h2930D0DB;
            59:  get_seed_b = 32'hF1931CDC;
            60:  get_seed_b = 32'h9E4748DD;
            61:  get_seed_b = 32'h65015AE1;
            62:  get_seed_b = 32'hB752B2E4;
            63:  get_seed_b = 32'h7F3AA0EB;
            64:  get_seed_b = 32'h39237AEF;
            65:  get_seed_b = 32'hD626D0F3;
            66:  get_seed_b = 32'h16E628F3;
            67:  get_seed_b = 32'hD7B18CF5;
            68:  get_seed_b = 32'hBC58A4F4;
            69:  get_seed_b = 32'h93C286F4;
            70:  get_seed_b = 32'hC75E96F4;
            71:  get_seed_b = 32'h0E1852F8;
            72:  get_seed_b = 32'h1AFDAD02;
            73:  get_seed_b = 32'hCD506F02;
            74:  get_seed_b = 32'h3B0DD915;
            75:  get_seed_b = 32'hE1D58921;
            76:  get_seed_b = 32'h2EAC992C;
            77:  get_seed_b = 32'h70781D2E;
            78:  get_seed_b = 32'h0098912F;
            79:  get_seed_b = 32'h40855733;
            80:  get_seed_b = 32'h8D33213A;
            81:  get_seed_b = 32'h2AB3593B;
            82:  get_seed_b = 32'h826B093D;
            83:  get_seed_b = 32'hCDF15D3D;
            84:  get_seed_b = 32'hC7701341;
            85:  get_seed_b = 32'hB6FE854C;
            86:  get_seed_b = 32'hDA0F394E;
            87:  get_seed_b = 32'hFF74C951;
            88:  get_seed_b = 32'h00C69D55;
            89:  get_seed_b = 32'h65565D57;
            90:  get_seed_b = 32'h013B195D;
            91:  get_seed_b = 32'h4636515E;
            92:  get_seed_b = 32'h8217FB60;
            93:  get_seed_b = 32'h70506565;
            94:  get_seed_b = 32'hCD9D7573;
            95:  get_seed_b = 32'h33CCDB78;
            96:  get_seed_b = 32'h132FE180;
            97:  get_seed_b = 32'h99ECDD80;
            98:  get_seed_b = 32'hF4BA0784;
            99:  get_seed_b = 32'h8AF3BF87;
            100: get_seed_b = 32'hC7996388;
            101: get_seed_b = 32'h26B8198D;
            102: get_seed_b = 32'hC2B03F91;
            103: get_seed_b = 32'h90DE3395;
            104: get_seed_b = 32'h40FDF197;
            105: get_seed_b = 32'hFB6EC999;
            106: get_seed_b = 32'h6DAFA199;
            107: get_seed_b = 32'hD9FBF3A4;
            108: get_seed_b = 32'h23982BA5;
            109: get_seed_b = 32'h3F8783A7;
            110: get_seed_b = 32'h697B3BAA;
            111: get_seed_b = 32'hFE3759B0;
            112: get_seed_b = 32'hAD6505B1;
            113: get_seed_b = 32'hF21DC3B5;
            114: get_seed_b = 32'hC374E1B5;
            115: get_seed_b = 32'hEDED3FB6;
            116: get_seed_b = 32'hB2D781C2;
            117: get_seed_b = 32'hE4BACBC8;
            118: get_seed_b = 32'h0BF4C5C9;
            119: get_seed_b = 32'hD0B9E9CA;
            120: get_seed_b = 32'h41C52BCE;
            121: get_seed_b = 32'hE66A9BCF;
            122: get_seed_b = 32'h60840DCE;
            123: get_seed_b = 32'h27BE89D2;
            124: get_seed_b = 32'h9A00CDD6;
            125: get_seed_b = 32'hA20F03E4;
            126: get_seed_b = 32'h47E169E7;
            127: get_seed_b = 32'h3EAF71EA;
            default: get_seed_b = 32'hCAFEBABE;
        endcase
    endfunction


    //////////////////////////////////////////////////////////////////////////////
    // Resolve seeds at compile/elaboration time
    //////////////////////////////////////////////////////////////////////////////
    localparam logic [31:0] SEED_A = get_seed_a(INDEX%128);
    localparam logic [31:0] SEED_B = get_seed_b(INDEX%128);

    //////////////////////////////////////////////////////////////////////////////
    // Xorshift RNGs
    //////////////////////////////////////////////////////////////////////////////
    logic [31:0] uniformRandomA, uniformRandomB;
    logic uniformGenValidA, uniformGenValidB;

    xorshift #(
        .WIDTH(32),
        .SEED(SEED_A)
    ) genA (
        .clk(clk),
        .rst(rst),
        .rand_val(uniformRandomA),
        .valid(uniformGenValidA)
    );

    xorshift #(
        .WIDTH(32),
        .SEED(SEED_B)
    ) genB (
        .clk(clk),
        .rst(rst),
        .rand_val(uniformRandomB),
        .valid(uniformGenValidB)
    );

    //////////////////////////////////////////////////////////////////////////////
    // ROM output valid pipeline
    //////////////////////////////////////////////////////////////////////////////
    logic rom_pipe0;
    always_ff @(posedge clk) begin
        if (rst) begin
            rom_pipe0 <= 1'b0;
            valid <= 1'b0;
        end else begin
            rom_pipe0 <= uniformGenValidA & uniformGenValidB;
            valid <= rom_pipe0;
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // CDF ROM instantiation
    //////////////////////////////////////////////////////////////////////////////
    cdf_rom cdfRom(
        .clka(clk),
        .addra(uniformRandomA),
        .douta(za),
        .clkb(clk),
        .addrb(uniformRandomB),
        .doutb(zb)
    );

endmodule
