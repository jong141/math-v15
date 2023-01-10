import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:extended_math/extended_math.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mathv11/pages/xxxxx.dart';
import 'pages/rcRoute.dart';
import 'pages/3.dart';
import 'pages/Complex intrinsic impedance 1.dart';
import 'pages/Complex intrinsic impedance 2.dart';





main()
{
  runApp(MaterialApp (
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double alpha = 0;
  double beta = 0;
  double omega = 0;
  double mu = 0;
  double mu_o = 0;
  double real_epsilon = 0;
  double im_epsilon = 0;
  double epsilon = 0;
  double epsilon_r = 0;
  double epsilon_o = 0;
  double sigma = 0;
  Complex infoText = Complex(re: 0 , im: 0);
  Complex x = Complex(re: 0 , im: 0);
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();

  docomplex() {
    setState(() {
      alpha = double.parse(controller1.text);
      beta = double.parse(controller2.text);
      final a = Complex(re: alpha , im: 0);
      final b = Complex(re: 0 , im: beta);
      final propagration_constant = a + b;
      x = propagration_constant;
      print(propagration_constant);
    });
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Math v14'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0 , top:10.0, right: 10.0),
          child: SingleChildScrollView(
              child:Column(
                children: [
              Row(
                children: const [
                  SizedBox(
                    height: 10,
                  )
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller1,
                        decoration: InputDecoration(
                            label: Math.tex( r'\alpha', textStyle: const TextStyle(fontSize: 25)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                        //inputFormatters: <TextInputFormatter>[
                         // FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                        //],
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(

                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          label: Math.tex( r'\beta', textStyle: const TextStyle(fontSize: 25)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller3,
                        decoration: InputDecoration(
                            label: Math.tex( r'\omega', textStyle: const TextStyle(fontSize: 25)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(

                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller4,
                      decoration: InputDecoration(
                          label: Math.tex( r'\mu_r', textStyle: const TextStyle(fontSize: 25)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller5,
                        decoration: InputDecoration(
                            label: Math.tex( r'\varepsilon_c \ \scriptsize Real \  Part', textStyle: const TextStyle(fontSize: 25)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller6,
                      decoration: InputDecoration(
                          label: Math.tex( r'\varepsilon_c \ \scriptsize Im \  Part', textStyle: const TextStyle(fontSize: 25)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
                  Row(
                    children: [
                      Expanded(
                        child:SizedBox(
                          height: 100,
                          width: 170,
                          child: TextField(
                            controller: controller7,
                            decoration: InputDecoration(
                                label: Math.tex( r'\varepsilon_r', textStyle: const TextStyle(fontSize: 25)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))
                            ),
                            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          width: 170,
                          child: TextField(
                            controller: controller8,
                            decoration: InputDecoration(
                                label: Math.tex( r'\sigma', textStyle: const TextStyle(fontSize: 25)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))
                            ),
                            keyboardType: TextInputType.text,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:SizedBox(
                          height: 100,
                          width: 170,
                          child: TextField(
                            controller: controller9,
                            decoration: InputDecoration(
                                label: Math.tex( r'', textStyle: const TextStyle(fontSize: 25)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))
                            ),
                            keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          width: 170,
                          child: TextField(
                            controller: controller10,
                            decoration: InputDecoration(
                                label: Math.tex( r'\ ', textStyle: const TextStyle(fontSize: 25)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))
                            ),
                            keyboardType: TextInputType.text,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.\-]+$')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                        ),
                        ),
                          onPressed: () {
                            _vaildateUserinput(controller1.text) && _vaildateUserinput(controller2.text) && _vaildateUserinput(controller3.text)
                                && _vaildateUserinput(controller4.text) && _vaildateUserinput(controller5.text) && _vaildateUserinput(controller6.text)
                            && _vaildateUserinput(controller7.text) && _vaildateUserinput(controller8.text);
                            },

                          child: Text('Complex Propagration Constant', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ),
                    ),
                    ),
                  ),
                ],
              ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 80,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue[900],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  _vaildateUserinput1(controller3.text) && _vaildateUserinput1(controller4.text) && _vaildateUserinput1(controller5.text)
                                      && _vaildateUserinput1(controller6.text) && _vaildateUserinput1(controller7.text) && _vaildateUserinput1(controller8.text);
                                },

                                child: Text('Complex Intrinsic Impedance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

              Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'X1 = $infoText',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );

  }
  _vaildateUserinput(String input){

    if(controller1.text.isNotEmpty && controller2.text.isNotEmpty)
    {
      setState(() {
        alpha = double.parse(controller1.text);
        beta = double.parse(controller2.text);
        final a = alpha.toStringAsPrecision(4);
        final b = beta.toStringAsPrecision(4);
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => complex_propagation_constant(
                  a : a,
                  b : b,
                )
            )
        );
      });
    }

    else if (controller3.text != '' && controller4.text != '' && controller5.text != '' && controller6.text != '' )
      {
        setState(() {
          omega = double.parse(controller3.text);
          mu = double.parse(controller4.text);
          real_epsilon = double.parse(controller5.text);
          im_epsilon = double.parse(controller6.text);
          mu_o = (4*pi)*pow(10,-7);
          //calculation
          // sqrt(mu*Ec) = ??
          final u = mu*mu_o;
          final E = Complex(re: real_epsilon , im: im_epsilon);
          final x = E.module*u;
          final z = sqrt(x);
          final angle = E.argument/2;

          //jw
          final w = Complex(re: 0 , im: omega);
          final R_jw = w.module;
          final angle_jw = w.argument;

         //result
          final R_propagration_constant1 = R_jw*z;
          final angle_propagration_constant1 = angle_jw+angle;
          final real_propagration_constant1 = R_propagration_constant1*cos(angle_propagration_constant1);
          final im_propagration_constant1 = R_propagration_constant1*sin(angle_propagration_constant1);
          final propagration_constant1 = Complex( re: real_propagration_constant1 , im: im_propagration_constant1);

          //display constant with 3 significant
          final mu_display = mu.toStringAsFixed(4);
          final u_display = u.toStringAsExponential(4);
          final real_epsilon_display = real_epsilon.toStringAsPrecision(4);
          final im_epsilon_display = im_epsilon.toStringAsPrecision(4);
          final root_R_display = E.module.toStringAsPrecision(4);
          final root_angle_display = E.argument.toStringAsPrecision(4);
          final root_real_display = z.toStringAsPrecision(4);
          final root_im_display = angle.toStringAsPrecision(4);
          final polar_R_display = x.toStringAsPrecision(4);


          final omega_display = omega.toStringAsPrecision(4);
          final R_jw_display = R_jw.toStringAsPrecision(4);
          final angle_jw_display = angle_jw.toStringAsPrecision(4);

          final R_propagration_constant1_display = R_propagration_constant1.toStringAsPrecision(4);
          final angle_propagration_constant1_display = angle_propagration_constant1.toStringAsPrecision(4);
          final real_propagration_constant1_display = real_propagration_constant1.toStringAsPrecision(4);
          final im_propagration_constant1_display = im_propagration_constant1.toStringAsPrecision(4);

          infoText = propagration_constant1;
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => complex_propagation_constant1(
                    mu_display                                : mu_display ,
                    u_display                                 : u_display,
                    real_epsilon_display                      : real_epsilon_display,
                    im_epsilon_display                        : im_epsilon_display,
                    root_R_display                            : root_R_display,
                    root_angle_display                        : root_angle_display,
                    root_real_display                         :root_real_display,
                    root_im_display                           :root_im_display,
                    polar_R_display                           :polar_R_display,
                    omega_display                             :omega_display,
                    R_jw_display                              :R_jw_display,
                    angle_jw_display                          :angle_jw_display,
                    R_propagration_constant1_display          : R_propagration_constant1_display,
                    angle_propagration_constant1_display      :angle_propagration_constant1_display,
                    real_propagration_constant1_display       :real_propagration_constant1_display,
                    im_propagration_constant1_display         :im_propagration_constant1_display,


                  )
              )
          );
        });

      }

    else if (controller3.text != '' && controller4.text != '' && controller7.text != '' && controller8.text != '')
    {
      setState(() {
        omega = double.parse(controller3.text);
        mu = double.parse(controller4.text);
        epsilon_r = double.parse(controller7.text);
        sigma = double.parse(controller8.text);
        mu_o = (4*pi)*pow(10,-7);
        epsilon_o = (1/(36 * pi))*pow(10,-9);
        //calculation
        // j(sigma/omega)
        final sm_om = sigma/omega;
        final u = mu*mu_o;
        final e = epsilon_r * epsilon_o;
        final m = Complex(re: u , im: 0);
        final E3 = Complex(re: e , im: -1*sm_om);
        final z3 = m*E3;
        final r3 = sqrt(z3.module);
        final angle3 = z3.argument/2;


        //jw
        final w = Complex(re: 0 , im: omega);
        final R_jw = w.module;
        final angle_jw = w.argument;

        //result
        final R_propagration_constant3 = R_jw*r3;
        final angle_propagration_constant3 = angle_jw+angle3;
        final real_propagration_constant3 = R_propagration_constant3*cos(angle_propagration_constant3);
        final im_propagration_constant3 = R_propagration_constant3*sin(angle_propagration_constant3);
        final propagration_constant3 = Complex( re: real_propagration_constant3 , im: im_propagration_constant3);

        //display constant with 3 significant
        final mu_display = mu.toStringAsPrecision(4);
        final u_display = u.toStringAsPrecision(4);
        final e_display = e.toStringAsPrecision(4);
        final er_display = epsilon_r.toStringAsPrecision(4);
        final eo_display = epsilon_o.toStringAsPrecision(4);
        final e_R_display = E3.module.toStringAsPrecision(4);
        final e_angle_display = E3.argument.toStringAsPrecision(4);
        final sigma_display = sigma.toStringAsPrecision(4);
        final sm_om_display = sm_om.toStringAsPrecision(4);
        final z3_R_display = z3.module.toStringAsPrecision(4);
        final z3_angle_display =z3.argument.toStringAsPrecision(4);
        final root3_R_display = r3.toStringAsPrecision(4);
        final root3_angle_display = angle3.toStringAsPrecision(4);

        final omega_display = omega.toStringAsPrecision(4);
        final R_jw_display = R_jw.toStringAsPrecision(4);
        final angle_jw_display = angle_jw.toStringAsPrecision(4);

        final R_propagration_constant3_display = R_propagration_constant3.toStringAsPrecision(4);
        final angle_propagration_constant3_display = angle_propagration_constant3.toStringAsPrecision(4);
        final real_propagration_constant3_display = real_propagration_constant3.toStringAsPrecision(4);
        final im_propagration_constant3_display = im_propagration_constant3.toStringAsPrecision(4);

        infoText = propagration_constant3;
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => complex_propagation_constant3(
                  mu_display                                : mu_display,
                  u_display                                 : u_display,
                  e_display                                 : e_display,
                  er_display                                : er_display,
                  eo_display                                : eo_display,
                  e_R_display                               : e_R_display,
                  e_angle_display                           : e_angle_display,
                  sigma_display                             : sigma_display,
                  sm_om_display                             : sm_om_display,
                  z3_R_display                              : z3_R_display,
                  z3_angle_display                          : z3_angle_display,
                  root3_R_display                           : root3_R_display,
                  root3_angle_display                       : root3_angle_display,
                  omega_display                             : omega_display,
                  R_jw_display                              : R_jw_display,
                  angle_jw_display                          : angle_jw_display,
                  R_propagration_constant3_display          : R_propagration_constant3_display,
                  angle_propagration_constant3_display      : angle_propagration_constant3_display,
                  real_propagration_constant3_display       : real_propagration_constant3_display,
                  im_propagration_constant3_display         : im_propagration_constant3_display,


                )
            )
        );
      });

    }

    else
    {
      infoText = infoText;
    }

  }

  _vaildateUserinput1(String input){

    if (controller4.text != '' && controller5.text != '' && controller6.text != '')
    {
      setState(() {
        mu = double.parse(controller4.text);
        real_epsilon = double.parse(controller5.text);
        im_epsilon = double.parse(controller6.text);
        mu_o = (4*pi)*pow(10,-7);
        //calculation

        final E = Complex(re: real_epsilon , im: im_epsilon);
        final u = mu*mu_o;
        final g_real = u/E.module;
        final g_angle = -1*E.argument;
        final q_square_real = sqrt(g_real);
        final g_square_angle = g_angle/2;
        final g_sqaure_re = q_square_real*cos(g_square_angle);
        final g_sqaure_im = q_square_real*sin(g_square_angle);
        final ans4 = Complex(re:g_sqaure_re, im:g_sqaure_im);

        //display constant with 3 significant
        final mu_display = mu.toStringAsFixed(4);
        final u_display = u.toStringAsPrecision(4);
        final real_epsilon_display = real_epsilon.toStringAsPrecision(4);
        final im_epsilon_display = im_epsilon.toStringAsPrecision(4);
        final root_R_display = E.module.toStringAsPrecision(4);
        final root_angle_display = E.argument.toStringAsPrecision(4);
        final q_real_display = g_real.toStringAsPrecision(4);
        final q_angle_display = g_angle.toStringAsPrecision(4);
        final q_square_real_display = q_square_real.toStringAsPrecision(4);
        final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
        final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
        final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);


        infoText = ans4;
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => complex_intrinsic_impedance1(
                  mu_display                                : mu_display,
                  u_display                                 : u_display,
                  real_epsilon_display                      : real_epsilon_display,
                  im_epsilon_display                        : im_epsilon_display,
                  root_R_display                            : root_R_display,
                  root_angle_display                        : root_angle_display,
                  q_real_display                            : q_real_display,
                  q_angle_display                           : q_angle_display,
                  q_square_real_display                     : q_square_real_display,
                  g_square_angle_display                    : g_square_angle_display,
                  g_sqaure_re_display                       : g_sqaure_re_display,
                  g_sqaure_im_display                       : g_sqaure_im_display,

                )
            )
        );
      });

    }

    else if (controller3.text != '' && controller4.text != '' && controller7.text != '' && controller8.text != '' )
    {
      setState(() {
        omega = double.parse(controller3.text);
        mu = double.parse(controller4.text);
        epsilon_r = double.parse(controller7.text);
        sigma = double.parse(controller8.text);
        mu_o = (4*pi)*pow(10,-7);
        epsilon_o = (1/(36 * pi))*pow(10,-9);

        //calculation
        // sqrt of {mu/eilson-j(sigma/w)}
        final e = epsilon_r * epsilon_o;
        final sm_om = sigma/omega;
        final E = Complex(re: e , im: -1*sm_om);
        final u = mu*mu_o;
        final g_real = u/E.module;
        final g_angle = -1*E.argument;
        final q_square_real = sqrt(g_real);
        final g_square_angle = g_angle/2;
        final g_sqaure_re = q_square_real*cos(g_square_angle);
        final g_sqaure_im = q_square_real*sin(g_square_angle);
        final ans5 = Complex(re:g_sqaure_re, im:g_sqaure_im);

        //result
        final omega_display = omega.toStringAsPrecision(4);
        final sigma_display = sigma.toStringAsPrecision(4);
        final mu_display = mu.toStringAsFixed(4);
        final u_display = u.toStringAsPrecision(4);
        final er_display = epsilon_r.toStringAsPrecision(4);
        final eo_display = epsilon_o.toStringAsPrecision(4);
        final real_epsilon_display = e.toStringAsPrecision(4);
        final im_epsilon_display = sm_om.toStringAsPrecision(4);
        final root_R_display = E.module.toStringAsPrecision(4);
        final root_angle_display = E.argument.toStringAsPrecision(4);
        final q_real_display = g_real.toStringAsPrecision(4);
        final q_angle_display = g_angle.toStringAsPrecision(4);
        final q_square_real_display = q_square_real.toStringAsPrecision(4);
        final g_square_angle_display = g_square_angle.toStringAsPrecision(4);
        final g_sqaure_re_display = g_sqaure_re.toStringAsPrecision(4);
        final g_sqaure_im_display = g_sqaure_im.toStringAsPrecision(4);

        infoText = ans5;
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => complex_intrinsic_impedance2(
                  omega_display                             : omega_display,
                  mu_display                                : mu_display,
                  sigma_display                             : sigma_display,
                  u_display                                 : u_display,
                  er_display                                : er_display,
                  eo_display                                : eo_display,
                  real_epsilon_display                      : real_epsilon_display,
                  im_epsilon_display                        : im_epsilon_display,
                  root_R_display                            : root_R_display,
                  root_angle_display                        : root_angle_display,
                  q_real_display                            : q_real_display,
                  q_angle_display                           : q_angle_display,
                  q_square_real_display                     : q_square_real_display,
                  g_square_angle_display                    : g_square_angle_display,
                  g_sqaure_re_display                       : g_sqaure_re_display,
                  g_sqaure_im_display                       : g_sqaure_im_display,

                )
            )
        );
      });

    }

    else
    {
      infoText = infoText;
    }

  }
}













