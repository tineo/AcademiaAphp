<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Complejo;
use Doctrine\ORM\Query;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\Entity\User;
use AppBundle\Form\UserType;
use Doctrine\ORM\EntityManager;



class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
        ]);
    }

    /**
     * @Route("/register", name="register")
     */
    public function registerAction(Request $request)
    {
        // Create a new blank user and process the form
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Encode the new users password
            $encoder = $this->get('security.password_encoder');
            $password = $encoder->encodePassword($user, $user->getPlainPassword());
            $user->setPassword($password);

            // Set their role
            $user->setRole('ROLE_USER');

            // Save
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            return $this->redirectToRoute('login');
        }

        return $this->render('auth/register.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/inscripciones", name="inscripciones")
     */
    public function inscripcionesAction(Request $request)
    {
        /* @var $entityManager Doctrine\ORM\EntityManager */
        //$em = $this->getDoctrine()->getManager();
        /*$coliseos = $this->getDoctrine()
            ->getRepository(Complejo::class)
            ->findAll();
        */

        $query = $this->getDoctrine()
            ->getRepository('AppBundle:Complejo')
            ->createQueryBuilder('c')
            ->getQuery();
        $complejos = $query->getResult(Query::HYDRATE_ARRAY);

        $query = $this->getDoctrine()
            ->getRepository('AppBundle:Complejo')
            ->createQueryBuilder('c')
            ->getQuery();
        $complejos = $query->getResult(Query::HYDRATE_ARRAY);

        //var_dump($complejos);

        // replace this example code with whatever you need
        return $this->render('inscripciones/inscripcion.html.twig',
            [ "complejos" => $complejos ]
        );
    }

    /**
     * @Route("/dashboard/alumno", name="alumno")
     */
    public function dashboardAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('dashboard/alumno.html.twig',[
            "row_fluid" => "row_fluid",
            "condense_menu" => "condense-menu",
            "pagesd_mobile" => "mini mini-mobile"
        ]);
    }

    /**
     * @Route("/dashboard/horarios", name="horarios")
     */
    public function dashboard2Action(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('dashboard/horarios.html.twig',[]);
    }
}
